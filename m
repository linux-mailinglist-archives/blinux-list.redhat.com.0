Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0BCC3349E42
	for <lists+blinux-list@lfdr.de>; Fri, 26 Mar 2021 01:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616720169;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OErF3auvhX3t6IRGqduxDMIHNvTFQ+RAyQPnTTPSuYM=;
	b=MIu5W0ny3jX25d9X0tAjxKesGcuZdc4orFykV5ApniXWcIyRCExvYS1x4e0bH/HlAwz/ma
	fFD0A49ztDZhonMznyExYKNpJFc+rO6CwR5LCNvQZpRrvBQYKVOlY63BsSGsojsnDvAURc
	fMhi7K21ch8Lpkta3m9AhL+a4rUB5Bw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-413-UTkllBB4Mzmae1OD1bvz0w-1; Thu, 25 Mar 2021 20:56:06 -0400
X-MC-Unique: UTkllBB4Mzmae1OD1bvz0w-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D1A30612A1;
	Fri, 26 Mar 2021 00:56:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DA575BAFF;
	Fri, 26 Mar 2021 00:56:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 38AFB1809C83;
	Fri, 26 Mar 2021 00:55:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12Q0q3sF019104 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Mar 2021 20:52:03 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4BCF2104946D; Fri, 26 Mar 2021 00:52:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46D2B10500DF
	for <blinux-list@redhat.com>; Fri, 26 Mar 2021 00:52:00 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6879E811E7F
	for <blinux-list@redhat.com>; Fri, 26 Mar 2021 00:52:00 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-169-_O7UkkO3NDehIp08GvN4hg-1; Thu, 25 Mar 2021 20:51:58 -0400
X-MC-Unique: _O7UkkO3NDehIp08GvN4hg-1
Received: by mail-pg1-f175.google.com with SMTP id e33so3455831pgm.13
	for <blinux-list@redhat.com>; Thu, 25 Mar 2021 17:51:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=JXxl1XPSrRYWoEuRDmMtaA1qVt1UbXFi+wbRkD2GMdM=;
	b=pmmmi/YMDcdS0DFSnsjfYjL+PiZECpUCLbbKgGe47Kt8L8ILVx5giMt8paqG9aXlsY
	dCD+Ib/PMqIYWW7Eetvf5U3LjI+hSdeYiZNu2/y4bORlR1kqQ39NGK5hkZXMPZSEetOv
	ax+EwSJOLafi5+tedcSNcndO8qCYtjMLV4yIxUR9aidWHCjmv72b3j393APTgwfGBB/A
	BydQC6WmE2E28kslvr0nmbkh91w12SgezPtTf0rv6ZDrbhBF3+oM5I7/JDGPQmkBnYMq
	Xf+W4OrcoWcrYIAxVzCq8dPylJqkB8BHT3nIbTTgyNejYS+Kqdq1tQZXAchQtce2gRIv
	1q7w==
X-Gm-Message-State: AOAM533Emj792H/r/jnDa05V9alBc/8nwGVzCpbJl942h+OJKeewHsu6
	PVJvMkuFBYcUzCc+oLO0NcqE9E2ezmdX5Q==
X-Google-Smtp-Source: ABdhPJz90V0jsbmKgIZmfYeIUwK3X+2HA4l5KC5T8UCwGyMfwVD7Gc5/jjvUmMFW8yqCw0Z37t+q9A==
X-Received: by 2002:a05:6a00:14d3:b029:222:b711:3326 with SMTP id
	w19-20020a056a0014d3b0290222b7113326mr2736911pfu.28.1616719916798;
	Thu, 25 Mar 2021 17:51:56 -0700 (PDT)
Received: from [192.168.4.27] (075-113-161-023.res.spectrum.com.
	[75.113.161.23]) by smtp.gmail.com with ESMTPSA id
	u17sm6612896pgl.80.2021.03.25.17.51.55 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Mar 2021 17:51:56 -0700 (PDT)
X-Google-Original-From: Maurice Mines <Maurice.Mines@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Subject: Re: Slint not speaking in Vmware fusion on the Mac.
Date: Thu, 25 Mar 2021 17:51:53 -0700
References: <6AA6F9E6-D16A-4D46-8B8A-8383B3D499AD@pipkrokodil.se>
	<5f021569-c2b8-ab3a-7cb8-5d346d928b95@slint.fr>
	<6C70832C-9242-4206-A790-948B98965D55@pipkrokodil.se>
To: blinux-list@redhat.com
In-Reply-To: <6C70832C-9242-4206-A790-948B98965D55@pipkrokodil.se>
Message-Id: <DB78830D-1681-47AC-8023-F8FE7901FEC1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12Q0q3sF019104
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

CkhlbGxvLCB3aGF0IGtpbmQgb2Ygc2NyZWVuIHJlYWRpbmcsIG9yIGJyYWlsbGUgYWNjZXNzIGNh
biBiZSB1c2VkIHdpdGggdGhpcyBkaXN0cmlidXRpb24/IElmIGl0IHVzZXMgYSBzY3JlZW4gcmVh
ZGVyLCBpcyB0aGlzIHNwZWFrIHVwIG9yIHNvbWV0aGluZyBlbHNlPyBJZiBpdCdzIGdyYXBoaWNh
bCBJJ20gZ29pbmcgdG8gYXNzdW1lIHRoYXQgaXQgaXMgb3JjYT8gRG9lcyBhbnlib2R5IGhhdmUg
YW55IHRob3VnaHRzLCB0aGFuayB5b3UgYW5kIGl0IFZhbmNlIG1vcmUgaWRpb3QgYmFzZSBvbiBo
b3cgdG8gdHJ5IHRoaXMgZGlzdHJpYnV0aW9uIGluIGEgdmlydHVhbCBtYWNoaW5lLgo+IE9uIE1h
ciAyNSwgMjAyMSwgYXQgMjo0MiBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSGkhCj4gSSB0aGluayBzbyBi
dXQgSSBkbyBhbm90aGVyIHRyeS4KPiBUaGFua3MgZm9yIHlvdXIgbGlua3MgYW5kIGhlbHAuCj4g
L0EKPiAKPj4gMjUgbWFycyAyMDIxIGtsLiAyMDo1NyBza3JldiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPjoKPj4gCj4+IGZyb20gRGlk
aWVyIGFnYWluOgo+PiAKPj4gQXJlIHlvdSBzdXJlIHlvdSBhcmUgdXNpbmcgdGhlIGdvb2QgSVNP
PyBUaGUgbGFzdCBvbmUgaXMgaGVyZToKPj4gaHR0cDovL3NsYWNrd2FyZS51ay9zbGludC94ODZf
NjQvc2xpbnQtMTQuMi4xL2lzby8KPj4gCj4+IExlIDI1LzAzLzIwMjEgw6AgMjA6MDEsIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXQgOgo+Pj4gSGkhCj4+PiBJIGFt
IG5vdCBzdXJlIHdoYXQgaXMgZ29pbmcgb24gaGVyZS4KPj4+IEJ1dCBJIGFtIHRyeWluZyB0byBy
dW4gc2xpbnQgZnJvbSBhbiBpc28gdW5kZXIgTWFjLgo+Pj4gSSBjYW7igJl0IGdldCBpdCB0byBz
cGVhayBpbiBWTXdhcmUgZnVzaW9uIGZvciBzb21lIHJlYXNvbi4KPj4+IE5vdCBzdXJlIGlmIHRo
ZXJlIGlzIHNvbWUgc2VjdXJpdHkgc2V0dGluZyBvbiB0aGUgTWFjIHRoYXQgbWlnaHQgYmxvY2sg
c29tZXRoaW5nLgo+Pj4gQW55IHRob3VnaHRzLgo+Pj4gL0EKPj4+IAo+PiAKPj4gCj4+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1h
bi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPiAKPiAKPiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVk
aGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

