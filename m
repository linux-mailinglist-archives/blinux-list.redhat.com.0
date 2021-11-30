Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB63463D27
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638294322;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HIk6cW/XeJRlOs4H3mr2xuuCJq7lyHE5g05C6j6FtxQ=;
	b=R7t7nqwvMfNE/1ovJk0R60gSDsiCwT+h6UwC44v82hCs+7kdVHl9pUcw4nzF4JKWcUuw/l
	VSjC1r5kAES0EokXD4v7TUcTBim51vunCgbmGy/fD/qED+4fs3EFxRuiubCiGmarSReDCn
	gz+O+GbL4KBtWRyHYtDPra16UHwG8Eg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-573-zNmfzvKWO6Cy1fx_OgQs8g-1; Tue, 30 Nov 2021 12:45:19 -0500
X-MC-Unique: zNmfzvKWO6Cy1fx_OgQs8g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B094363A4;
	Tue, 30 Nov 2021 17:45:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 468F5694DE;
	Tue, 30 Nov 2021 17:45:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9386C4BB7C;
	Tue, 30 Nov 2021 17:45:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUHj6AI011403 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:45:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CF7D84047279; Tue, 30 Nov 2021 17:45:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB33B4047272
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:45:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A078785A5BA
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:45:06 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-411-hIJRATCTNS2QsZMaxQUoGw-1; Tue, 30 Nov 2021 12:45:04 -0500
X-MC-Unique: hIJRATCTNS2QsZMaxQUoGw-1
Received: by mail-qt1-f172.google.com with SMTP id f20so21008084qtb.4
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:45:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=OVgqeF63pV24HgpLaHSuImsbmFibdzn48WW0xUB8lYk=;
	b=xfK8JCuAtD/fiHHTvgrlZVM0J/AJjVIRQOGqJe0jYOjIoS64LhPtBOxHHL+jDdQBXs
	1jIyHiXrQqDHjUZvuDxEDDeDVJvbGWGxXyXywPlKdpsEkK3uHFL8qdQPbkEJEF6YmBGT
	9thZM9Qqshh9X3RuuEunrMvNSD+5LDBekVNoGtexsHax9nbdBynGB6wySSCDLWBOCaTl
	13fTybUbjErT8686kbTItkd6hNv4hL7wN1MKSn0B6MRUH+pq8DoHTV+zC1J8BFMFjP9P
	m4IUpZd5Hio1xVWgU3G5cH0pQLmcakpN5yZqcEUJAfq1vYHOZdScE/fkc+pfNGr9lGxB
	izCQ==
X-Gm-Message-State: AOAM531mqlPIxXVPnz0I9EkaBNbiP48TgOMHKlGpKS1uov2GOzRUOIlx
	4AZC91By/woJTlXOLKDU9Yf1IA1EeZY=
X-Google-Smtp-Source: ABdhPJzL0ZhIzWhzBKbUSVRy0BNSSTlJ84IuAbfEmyChDAawlo5UsRCWtHLUgj9sLHA6An9R6kyeyw==
X-Received: by 2002:a05:622a:591:: with SMTP id
	c17mr973057qtb.272.1638294304107; 
	Tue, 30 Nov 2021 09:45:04 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	x16sm10270347qkp.67.2021.11.30.09.45.03 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 09:45:03 -0800 (PST)
Subject: Re: What is the easiest and most accessible editor?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a3ea6f04-d8a4-2ef4-35cc-8e91d7582ab8@gmail.com>
	<dcf188c1-db80-bf0a-e54b-474f2fddbf55@gmail.com>
	<CAO2sX30oEaotc3CObf62R5Dg_0qLiu_qB3V3JF4EUQfACdkG+A@mail.gmail.com>
	<alpine.NEB.2.23.451.2111291731190.11659@panix1.panix.com>
	<878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
	<PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
Message-ID: <d7fdfa4d-de81-02bc-eb50-f741e3ab0c63@gmail.com>
Date: Tue, 30 Nov 2021 12:45:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SW50ZXJlc3RpbmcuIFRoZSBwcm9ibGVtIGlzIHRoYXQgZW1haWwgaXRzZWxmIGhhcyBzZXZlcmFs
IGNvbXBvbmVudHMgdGhhdCBkb24ndCAKZml0IHdlbGwgaW50byBhbiBlZGl0b3Igd2luZG93LiBS
ZWFkaW5nIGFuZCB3cml0aW5nIGVtYWlscyBmb3IgZXhhbXBsZSBmaXRzIGludG8gCmFuIGVkaXRv
ciBzdHlsZSB3aW5kb3cganVzdCBmaW5lLCBidXQgc2V0dGluZyB1cCBlbWFpbCBhY2NvdW50cywg
bW92aW5nIHRocm91Z2ggCmZvbGRlcnMgYW5kIGxpc3RzIG9mIG1lc3NhZ2VzLCBleHBhbmRpbmcg
YW5kIGNvbGxhcHNpbmcgdGhyZWFkcywgZXRjIGp1c3QgZG9uJ3QgCmZpdCBpbnRvIHRoYXQgYm94
IHZlcnkgd2VsbC4KCkkgYWxzbyBoYWQgYSBsb29rIGF0IG9uZSBwb2ludCBhdCB0aGUgc2hlbGwg
dGVybWluYWwuIFdoZXJlYXMgaXQncyBnb29kIHRvIGJlIAphYmxlIHRvIGVkaXQgdGhlIGN1cnJl
bnQgY29tbWFuZCBsaW5lLCBJIGZvdW5kIHRoYXQgcHJlc3NpbmcgdGhlIHVwIGFycm93IGtleSB0
byAKcHV0IHRoZSBwcmV2aW91cyBjb21tYW5kIGJhY2sgb24gdGhlIHNjcmVlbiB0byBlaXRoZXIg
cmVwZWF0IG9yIG1vZGlmeSBkaWRuJ3QgCmJyaW5nIHVwIHRoZSBwcmV2aW91cyBjb21tYW5kLCBi
dXQgaW5zdGVhZCBwdXQgbXkgY3Vyc29yIG9uIHRoZSBsYXN0IGxpbmUgb2YgdGhlIApwcmV2aW91
cyBjb21tYW5kJ3Mgb3V0cHV0LiBTaGVsbHMgbmVlZCB0byBiZSBsaW5lIGVkaXRlZCwgbm90IHNj
cmVlbiBlZGl0ZWQsIGFuZCAKdGhhdCdzIHdoZXJlIHRoZSB3aG9sZSB0aGluZyBmZWxsIGZsYXQs
IGVzcGVjaWFsbHkgc2luY2UgYXMgSSByZWNhbGwsIEkgd2FzIGV2ZW4gCmFibGUgdG8gYWNjaWRl
bnRhbGx5IG92ZXJ3cml0ZSBjb21tYW5kIG91dHB1dCBiZWNhdXNlIHRoZSB3aG9sZSBzY3JlZW4g
aXMgaW4gYW4gCmVkaXRhYmxlIC4uLiBidWZmZXIgSSB0aGluayB0aGV5IGNhbGwgaXQuCgpSZWdh
cmRpbmcgdGhlIGtleSBzZXF1ZW5jZXMsIHggaXMgYSB3YXkgdG8gY3Jvc3Mgc29tZXRoaW5nIG91
dCwgeCBpdCBvdXQsIGN1dCAKaXQuIEMgc3RhbmRzIGZvciBjb3B5LCBhbmQgSSBndWVzcyB2IGdv
dCBpdHMgcGFzdGUgZnVuY3Rpb25hbGl0eSBiZWNhdXNlIGl0J3MgCnJpZ2h0IG5leHQgdG8gY3V0
IGFuZCBjb3B5LiBOb3Qgc3VyZSBhYm91dCB0aGF0IG9uZS4gU3RpbGwsIGl0J3MgYmV0dGVyIHRo
YW4gCnNvbWUgb2YgdGhlIGtleSBjb21iaW5hdGlvbnMgSSBmaW5kIGV2ZW4gaW4gbmFubywgY29u
dHJvbCt3IHRvIGZpbmQgc29tZXRoaW5nIApmb3IgZXhhbXBsZSwgb3IgZXZlbiBiZXR0ZXIgaXMg
Y29udHJvbCtxLCB3aGljaCBpcyBzdXBwb3NlZCB0byBxdWl0LCBidXQgaW5zdGVhZCAKcGVyZm9y
bXMgYSBiYWNrd2FyZCBzZWFyY2guIFdoYXQgdGhlIC4uLj8gRW1hY3Mga2V5cyBhcmUgZXZlbiB3
b3JzZSwgc2luY2UgYXMgSSAKcmVjYWxsLCBmaW5kaW5nIHNvbWV0aGluZyByZXF1aXJlcyB0d28g
a2V5IGNvbWJpbmF0aW9ucywgYW5kIGlmIEkgcmVtZW1iZXIgCmNvcnJlY3RseSwgbmVpdGhlciBp
bmNsdWRlcyBhbiBmIGZvciBmaW5kIG9yIGV2ZW4gYW4gcyBmb3Igc2VhcmNoLiBFbWFjcyBwdXRz
IG1lIAppbiBtaW5kIG9mIHRoZSBvbGQgZGF5cyBvZiBhIGxpdHRsZSBwcm9ncmFtIEkgdXNlZCBp
biBzY2hvb2wgY2FsbGVkIFR1cmJvIApQYXNjYWwuIFRoYXQgaG9ycmlibGUgdGhpbmcgLi4uIGlm
IEkgd2FudGVkIHRvIGNvbXBpbGUgdGhlIHByb2dyYW0gSSBoYWQganVzdCAKd3JpdHRlbiwtwqAg
SSBzdGlsbCByZW1lbWJlciBpdCAtIEkgaGFkIHRvIHByZXNzIGNvbnRyb2wrayBhbmQgdGhlbiBk
LiBBZ2FpbiwgCndoYXQgdGhlIC4uLj8gSSBkb24ndCBrbm93IC4uLiBJIGp1c3QgZGlkIGl0IC4u
LiBiZWNhdXNlIHRoYXQncyB3aGF0IHRoZSB0ZWFjaGVyIAp0b2xkIG1lIEkgaGFkIHRvIGRvIGlu
IG9yZGVyIHRvIGNvbXBpbGUgbXkgcHJvZ3JhbS4gTm90aGluZyBpbiB0aGF0IGtleSBzZXF1ZW5j
ZSAKY291bGQgYmUgdGhvdWdodCBvZiBhcyBjb21waWxlIG9yIGV2ZW4gYnVpbGQsIHdlbGwsIG1h
eWJlIHRoZSBkIG9uIHRoZSBlbmQgb2YgCmJ1aWxkLiBCdXQgdGhhdCBzdXJlIHdhcyBhIG5pZ2h0
bWFyZSB0byBoYXZlIHRvIHJlbWVtYmVyIHRoYXQgdGhhdCdzIHdoYXQgdGhhdCAKY3JhenkgY29t
YmluYXRpb24gb2Yga2V5cyBkaWQuIEkgY2FuIG9ubHkgaW1hZ2luZSBldmVyeXRoaW5nIHdvcmtp
bmcgdGhhdCB3YXksIAp3aGljaCB3YXMgdGhlIGV4cGVyaWVuY2UgSSBoYWQgd2hlbiBJIGxvb2tl
ZCBhdCBzb21lIEVtYWNzIGRvY3VtZW50YXRpb24uIEJ1dCAKdGhlbiBJIGNvdWxkIGJlIHdyb25n
LCBzaW5jZSB0aGUgbGFzdCB0aW1lIEkgZXZlbiBvcGVuZWQgdGhlIGFwcGxpY2F0aW9uIHdhcyAK
cHJvYmFibHkgMTUgeWVhcnMgYWdvLCBhbmQgSSBkaWRuJ3QgZXZlbiBzZWUgdGhlIG5pY2UgbGl0
dGxlIGhlbHAgdGhpbmd5IGF0IHRoZSAKYm90dG9tIG9mIHRoZSBzY3JlZW4gbGlrZSB3aGF0IEkg
Z290IGZyb20gTmFubyBhbmQgUGljbyB0aGF0IEkgaGFkIHVzZWQgYmVmb3JlIAppdC4gQXQgbGVh
c3QgaW4gdmltIEkgd2FzIGFibGUgdG8gdXNlIHRoZSA6aGVscCBjb21tYW5kIHRvIGdldCBtZSBz
dGFydGVkLCBidXQgCmV2ZW4gdGhhdCB3YXMgbXVjaCBtb3JlIGNvbXBsaWNhdGVkIHRoYW4gaXQg
bmVlZGVkIHRvIGJlLCBlc3BlY2lhbGx5IHdoZW4gSSBqdXN0IAp3YW50ZWQgdG8gY3V0IHNvbWV0
aGluZyBhbmQgcGFzdGUgaXQgc29tZXdoZXJlIGVsc2UgaW4gdGhlIHNhbWUgZmlsZS4gSSBkbyBs
aWtlIAppdHMgc2VhcmNoIGFuZCByZXBsYWNlIGZ1bmN0aW9uYWxpdHkgdGhvdWdoLiAlcy9zb21l
dGhpbmcvZWxzZS9nIGlmIEkgcmVtZW1iZXIgCmNvcnJlY3RseSwganVzdCBsaWtlIGluIHRoZSBz
ZWQgY29tbWFuZCwgd2lsbCByZXBsYWNlIGV2ZXJ5IG9jY3VycmVuY2Ugb2YgCnNvbWV0aGluZyB3
aXRoIGVsc2UuIFRoYXQgc2FpZCwgSSBjYW4ganVzdCBhcyBlYXNpbHkgcnVuIGEgZmluZCBhbmQg
cmVwbGFjZSwgcHV0IApzb21ldGhpbmcgaW4gdGhlIHNlYXJjaCBmaWVsZCBhbmQgZWxzZSBpbiB0
aGUgcmVwbGFjZSBmaWVsZCwgdGhlbiB0aWNrIHRoZSBib3ggCnRoYXQgc2F5cyByZXBsYWNlIGFs
bCwgYW5kIGl0J3MganVzdCBhcyBnb29kLCBhbmQgZG9lc24ndCBldmVuIHVzZSBtb3JlIGZpbmdl
cnMsIApzaW5jZSB0aGUgdGFiIGtleSBpcyByZXBsYWNpbmcgdGhlIC8ga2V5IGluIHRoaXMgdXNl
IGNhc2UuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

