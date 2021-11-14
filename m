Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9787A44FC79
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 00:40:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636933249;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M9qPiwklhGX72W+KOqvVj79gaIuP5Peo3dLoUlp7OgY=;
	b=BG4cHwJa+vytqTEeIuhJuAJmqEGaLGrXOSl+HD1MNiWoD6mTxjZgInFZN8kUPGkWECdxv2
	kyQIrFVkN1pRom6niv7c0WSN2yINVnEMll8fHB63Yf1td8c8P0gvT+2pvt+PujnP35BQhF
	srvoVPiUuKbUTs6IhTqwtjOzN1fV15A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-501-7LKfeW4WOjWYhEInt5RafA-1; Sun, 14 Nov 2021 18:40:46 -0500
X-MC-Unique: 7LKfeW4WOjWYhEInt5RafA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 429251808303;
	Sun, 14 Nov 2021 23:40:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2922B10016F4;
	Sun, 14 Nov 2021 23:40:42 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D46314A703;
	Sun, 14 Nov 2021 23:40:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AENeX1A006249 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 18:40:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 92A3C1121318; Sun, 14 Nov 2021 23:40:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E5B41121315
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 23:40:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D0EAE1066559
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 23:40:29 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-255-0y5jb34OOXKGKDp3L0-KXg-1; Sun, 14 Nov 2021 18:40:27 -0500
X-MC-Unique: 0y5jb34OOXKGKDp3L0-KXg-1
Received: by mail-qt1-f172.google.com with SMTP id f20so13709275qtb.4
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 15:40:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=RJ2z4wHOpmIS9azQ+Gkuo+hgY8WbwV3DeJf9vrgwdrQ=;
	b=gcZj+7iZW3SRjPTQMZ8Xqxy81FOKmiTlo3FFCDQfbpO8oFaD0fJqGHzjXXmOhrgsXm
	33JNh02etQPnJdeuDOUd4oCLqmj3baYnDBXIdECN8VcbURTZMhWEUar4PDhF4pVCDOML
	2ASHRa2zF7VYl39T4JTe8jiIak/BdimJ4CYCeUGEa2X2Ig99xNlI1tIlaertcAJLJa/Q
	rswko5T/jDXHCxhrNoNiMU3j1yJbLogvfUBi/MXLFaVQ1jywQcnCf3lMMtocGfvrQFi6
	pP4WbY/fl/cq3/A118og5KigXMQYmaVbAqShjMFzR6KeZECLX5YozEwPHH0Za/i5EiSD
	8fqA==
X-Gm-Message-State: AOAM533GsL0Jy84ChqQ0ikZUcPyc4v4QenqHs/PPi99KUP0ZLUNBJG+p
	QKNgL9dkhn/ANbVgYjEUBf4K2fgnhTiU7MG3
X-Google-Smtp-Source: ABdhPJxmgJdH0XVhmxm9YLpp9F89S5PMKGYikHCQPcBchTIdsrg8oPKO5JWeRX7EM9fJ+GoR2aHs8w==
X-Received: by 2002:ac8:5892:: with SMTP id t18mr35079851qta.391.1636933227056;
	Sun, 14 Nov 2021 15:40:27 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	i67sm5854574qkd.90.2021.11.14.15.40.26 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 15:40:26 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
	<6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
	<b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
Message-ID: <c1a9cbd4-a9a1-910f-0244-049cea5edc74@gmail.com>
Date: Sun, 14 Nov 2021 18:40:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <b356b32b-3de9-88fb-c8d2-26876231dcc1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

V2h5IGRvIHRoZXkgbWFrZSBpdCBzbyBjb21wbGljYXRlZD8gV291bGRuJ3QgaXQgYmUgZWFzaWVy
IGlmIHdlIGFyZSBwdXQgCm9uIGFuIGVkaXRhYmxlIHNjcmVlbiB3aGVyZSB3ZSBjYW4ganVzdCBt
b3ZlIGZyb20gZmllbGQgdG8gZmllbGQgd2l0aCAKdGhlIHRhYiBrZXkgb3IgdGhlIGFycm93IGtl
eXM/IGFuZCBhdCB0aGUgZW5kIHN1Ym1pdCBvciBzYXZlPwoKSSB3aWxsIHBsYXkgd2l0aCBpdCBh
bmQgc2VlIGlmIEkgY291bGQgZmlndXJlIGl0IG91dC4gSWYgSSBjb3VsZCBoaWRlIAp0aGUgY2hh
dCBhbmQgdGhlIGNhbGVuZGFyIGZyb20gdGh1bmRlcmJpcmQgSSB3b3VsZCBub3QgdHJ5IGFueSBv
dGhlciAKZW1haWwgYXBwbGljYXRpb25zLgoKCkNoZWVycywKCklicmFoaW0KCk9uIDExLzE0LzIx
IDY6MjggUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gV2hl
biBpbiB0aGUgY29uZmlndXJhdGlvbiBzY3JlZW4sIHVzZSB0aGUgJ3cnIGNvbW1hbmQgdG8gc2Vh
cmNoIGZvciAKPiB0aGUgc3RyaW5nICJzaG93LWN1cnNvciIsIG9yIHRoZSBsaWtlLCBhbmQgaGl0
ICdzcGFjZScgb24gdGhhdC7CoCBPbmNlIAo+IHRoZSBjdXJzb3IgaXMgc2hvd2luZywgeW91IHNo
b3VsZCBiZSBhYmxlIHRvIGhlYXIgd2hlcmUgeW91IGFyZS4gSXQgaXMgCj4gbGlrZSBjaGVja2Jv
eGVzLsKgIFRoZXJlIHdpbGwgYmUgYW4gJ3gnIGluIHRoZSBvbmVzIHRoYXQgYXJlIHNlbGVjdGVk
Lgo+Cj4KPiBZb3Ugd29uJ3QgZmluZCBhIGZpZWxkIGNhbGxlZCBpbWFwIHNlcnZlciwgYnV0IHlv
dSB3aWxsIGZpbmQgdmFyaW91cyAKPiBwYXRocywgaW5jbHVkaW5nIG9uZSBmb3IgaW5ib3guwqAg
WW91IGhhdmUgdG8gaW5jbHVkZSBwb3J0IG51bWJlcnMgYW5kIAo+IHJlbW90ZSBwYXRobmFtZXMu
wqAgQW4gZXhhbXBsZSBsaW5lIG1pZ2h0IGJlOgo+Cj4KPiAiaW5ib3hwYXRoPXtkYWh1bnRAaW1h
cC5nb29nbGUuY29tOjQ0M31pbmJveCIKPgo+Cj4gV2l0aCB5b3VyIGZhdm9yaXRlIHNlYXJjaCBl
bmdpbmUsIGxvb2sgZm9yIHNvbWV0aGluZyBsaWtlICJwaW5lIAo+IGdtYWlsIi4gVGhlcmUgYXJl
IHNldmVyYWwgZXhhbXBsZSBmaWxlcyBvbiB0aGUgbmV0LsKgIFRoZXNlIGZpbGVzIGFyZSAKPiBo
dW1hbi1yZWFkYWJsZSBhbmQgZWRpdGFibGUuwqAgUmVtZW1iZXIsIHRoZSBmaWxlIGluIHF1ZXN0
aW9uIGlzIGNhbGxlZCAKPiAifi8ucGluZXJjIi7CoCBJZiB5b3Ugd2FudCB0byBlZGl0IHRoaXMg
ZmlsZSB3aXRoIGEgZ3VpIHByb2dyYW0gbGlrZSAKPiBwbHVtYSwgdGhhdCB3aWxsIHdvcmsuwqAg
SW4gb3JkZXIgdG8gaGF2ZSB5b3VyIGZpbGUgbWFuYWdlciBzaG93IHlvdSAKPiB0aGUgZmlsZXMg
d2l0aCBuYW1lcyBiZWdpbm5pbmcgd2l0aCAnLicsIHVzZSAnY3RybCtoJywgaW4gYSBmaWxlIAo+
IG1hbmFnZXIgd2luZG93Lgo+Cj4KPgo+IEhUSCwKPgo+Cj4KPiBEYXZlwqAgSHVudMKgIDxrYTFj
ZXlAZ21haWwuY29tPgo+Cj4KPgo+IE9uIDExLzE0LzIxIDE4OjE0LCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiB0aGUgc210cCBzZXJ2ZXIgZXRjLiBUaGUgcHJv
YmxlbSBpcyB0aGF0IG1vdmluZyBpbnRvIHRoZXNlIGZpZWxkcyAKPj4gd2l0aCB0aGUgYXJyb3dz
IGRvZXMgbm90IHdvcmsuIEkgZ2V0IG5vIAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

