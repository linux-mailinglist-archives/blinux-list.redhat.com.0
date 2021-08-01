Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 205A83DCA9E
	for <lists+blinux-list@lfdr.de>; Sun,  1 Aug 2021 09:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627803884;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=63gPkstfir2LuW7VqY5Ln7+JEdYZYMgI6vCPRrJ99qk=;
	b=MopdmHES0u46y7K5RP0FZh6iKCTfFGhuSImX35rIrXDjCxjf9Omo/zyX1tVd/yBfOQIPc3
	9U3WEmx8MIgChDLnc5sm1ZIx/5zJ372f4yyqPvXwskyfA7X9LjERSK+eB4PfbIkkoSSqmb
	nScMqkVbtfBAtsx//rLDlZlhoMpDjx4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-454-gG8PpzHwPLCKUXNKla38bw-1; Sun, 01 Aug 2021 03:44:42 -0400
X-MC-Unique: gG8PpzHwPLCKUXNKla38bw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3D3731084F4C;
	Sun,  1 Aug 2021 07:44:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 166356091B;
	Sun,  1 Aug 2021 07:44:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E7049180BAB0;
	Sun,  1 Aug 2021 07:44:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1717eguc007398 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Aug 2021 03:40:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1AB7E202E4A1; Sun,  1 Aug 2021 07:40:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 160EB202E4A0
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 07:40:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9391B8CA946
	for <blinux-list@redhat.com>; Sun,  1 Aug 2021 07:40:39 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-107-anvgUKUWN1i07p9SY7T_qA-1; Sun, 01 Aug 2021 03:40:36 -0400
X-MC-Unique: anvgUKUWN1i07p9SY7T_qA-1
Received: by mail-qt1-f175.google.com with SMTP id l24so9613735qtj.4
	for <blinux-list@redhat.com>; Sun, 01 Aug 2021 00:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=nhAsgPgR28yZ2PKpa2mU+910h7jzAsso2GPmspouCSU=;
	b=B2LTcIUqXMUQMrtcESaSrN6guoNYl1mWR+PlleriI8cqtnZKEXGPMNrd4NnBrBVKDh
	bMOYoTCFigGv0zsy3Rw6gKxaVnMhqfVI3UJ0XxL2csConTiPq9hpUBeh9MQLCzhf3Z4C
	T/zTuHmNEfIrS/LoTSgdudwoBrsD581BiXMdX3N0SiklN6WoBYPgX27nwonLPOHzaMDQ
	occWtayXUms/z5cI4J7fm4n1IudxFRMWwc4h0RArMxcfpREuu6PBIeBC/lvOETZ921Af
	AHj5IL/cWq/GjwyAVNk5W8Q4owYFmziq7cWNUsw62/yVVJLuuL99j1VnVk7dHzkKsQ+x
	OY6w==
X-Gm-Message-State: AOAM532klJIu8yS4z5zUDwq8+jplf5pcOJ1dKzS1sNltXfzZJqngYArx
	13Xj/AdO3ODCpKcc6EDkS8bp/EBk9ZFEAg==
X-Google-Smtp-Source: ABdhPJxsHdmLcYeFoAaWV2TjMR95701948Fn68+KlBzGNsCc9z7pEm+P0jlSJHfBfj668d8xrxsaoA==
X-Received: by 2002:a05:622a:1044:: with SMTP id
	f4mr9121217qte.335.1627803636081; 
	Sun, 01 Aug 2021 00:40:36 -0700 (PDT)
Received: from smtpclient.apple (024-197-047-106.biz.spectrum.com.
	[24.197.47.106]) by smtp.gmail.com with ESMTPSA id
	z21sm2905436qti.73.2021.08.01.00.40.35 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 01 Aug 2021 00:40:35 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3686.0.1.2.1\))
Subject: Re: I'm cured of clear archlinux installs
Date: Sun, 1 Aug 2021 02:40:34 -0500
References: <alpine.NEB.2.23.451.2107312319020.3719@panix1.panix.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <alpine.NEB.2.23.451.2107312319020.3719@panix1.panix.com>
Message-Id: <D28B6FA8-3AC3-4031-B230-3437923E242B@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBiZWxpZXZlIHRoYXQgQXJjaCBpcyBmb3IgKmFkdmFuY2VkKiBMaW51eCB1c2Vycy4gVGhvc2Ug
d2hvIGFyZSBwdXNoaW5nIEFyY2ggb24gdGhvc2Ugd2hvIGFyZW7igJl0IHJlYWR5IGZvciBpdCBq
dXN0IGRvbuKAmXQgc2VlbSB0byBnZXQgaG93IG11Y2ggbW9yZSBhZHZhbmNlZCBpbnRvIExpbnV4
IHRoZXkgYXJlIGNvbXBhcmVkIHRvIG90aGVyIHVzZXJzLiBJ4oCZZCBzYXkgdHJ5IEZlZG9yYSBp
ZiB5b3Ugd2FudCBzb21ldGhpbmcgbGlrZSBhIHJvbGxpbmcgcmVsZWFzZSB3aXRoIG1hbnkgY29u
dHJpYnV0b3JzLgpEZXZpbiBQcmF0ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQoKSHR0cHM6Ly9k
ZXZpbnByYXRlci5mbG91bmRlci5vbmxpbmUKCj4gT24gSnVsIDMxLCAyMDIxLCBhdCAxMDoyNCBQ
TSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4gCj4gYWxzYSBkb2Vzbid0IHdvcmsgcG9zdC1pbnN0YWxsOyBlc3BlYWst
bmcgYW5kIGVzcGVhay1uZy1lc3BlYWsgY29uZmxpY3QKPiB3aXRoIGVzcGVhayB3aGljaCB3b3Vs
ZCBub3JtYWxseSBub3QgYmUgYSBwcm9ibGVtIGV4Y2VwdCBzcGQtY29uZiBwYXJ0IG9mCj4gc3Bl
ZWNoLWRpc3BhdGNoZXIgY2FuJ3QgcnVuIGFuZCBzZXQgYWxzYSBhcyBkZWZhdWx0IG91dHB1dCB3
aXRoIHB1bHNlYXVkaW8KPiBvbiB0aGUgc3lzdGVtLiAgSWYgSSB3ZXJlIHRvIHVzZSBwdWxzZWF1
ZGlvIGFzIG91dHB1dCBmb3IKPiBzcGVlY2gtZGlzcGF0Y2hlciBhbmQgbWF5YmUgZ2V0IGVzcGVh
ay1uZyB1cCBhbmQgd29ya2luZyBwdWxzZWF1ZGlvIGJsb2Nrcwo+IGFsbCBtZWRpYSBwbGF5ZXJz
Lgo+IFdoYXQncyB3b3JzZSBubyBkb2N1bWVudGF0aW9uIGluIGFyY2h3aWtpIGZvciBob3cgdG8g
aW5zdGFsbCBlc3BlYWstbmcKPiB0aGF0J3MgcmVhZGFibGUgaW4gRW5nbGlzaC4KPiBJIG1pZ2h0
IGJlIGFibGUgdG8gZ2V0IGplbnV4IHJ1bm5pbmcgZXNwZWFrLW5nLCB0aGF0J3MgbXkgbmV4dCBw
cm9qZWN0Lgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+
IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51
eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

