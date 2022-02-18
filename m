Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DC714BC219
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 22:31:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645219868;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=x+aUEwmczcmSZdWYTl6Vgk3uNT0ncaSXnRdMohMUkSE=;
	b=ceZrFYAKmeE7JZ1fnJ9IYtqJ8TzN6ZfCGQooGJweXcOzPWH7z2Z/E42ElAJo3zMhlKMHWS
	2Z+RkqjvoO4ICNtqV2K4q4HtC9l9vd3ybuP4ambmZQ2RAWfnPRr50rmMOqUdSD2VXOsIh4
	fWklxGxqZun3yUEIKzduv48H4x6wWjk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-553-ThOfb-fOM46ciireKjTAzg-1; Fri, 18 Feb 2022 16:31:04 -0500
X-MC-Unique: ThOfb-fOM46ciireKjTAzg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D5A23801AC5;
	Fri, 18 Feb 2022 21:31:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46288100E107;
	Fri, 18 Feb 2022 21:31:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D80431809CAA;
	Fri, 18 Feb 2022 21:30:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21ILUq6J009494 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 16:30:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 09D5A40885AB; Fri, 18 Feb 2022 21:30:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05C0D40885A0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 21:30:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E1A3F811E76
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 21:30:51 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-412-AS0JXJUyPXuQxGeQbsspFA-1; Fri, 18 Feb 2022 16:30:50 -0500
X-MC-Unique: AS0JXJUyPXuQxGeQbsspFA-1
Received: by mail-wm1-f54.google.com with SMTP id
	bg21-20020a05600c3c9500b0035283e7a012so7325807wmb.0
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 13:30:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=tVMIGvIs7rq7NgtGYGSqtnBEXo2VjBOl1Y4OiP9Lkmg=;
	b=39k/Il9LCJImBAuXPAtAlSPsSlwuvO4WZfjuekcF+0L11gDNL4x7HzW41cVKRcpk52
	YE6u+SiYRf9VHGxs0r5iuvzRabkjdfeAjCerZ4Nx38vSIqnXdvH8c+w2dhfdEZ99lrWI
	Cv71KVF0t5pYISSUvk1nUOzGRasn9qUsXJAQNHkeX9QKFHD/Gcr+7bFxtdaHf+lbtgDX
	ROG3kNDuedz4omclgd1MvjJhHYl2zePT7xzne9nrwnddLbL+jfpIM/MeSXwAYWwZzKpK
	niY3FW25+MTzLzsDtHH9y7DMD1oYBfgMTqoKW5ApQBxNgxz7e3WO1KAH7ThuZ3vVwlOt
	pqLg==
X-Gm-Message-State: AOAM533DQvx9XKSPw5D2/9AoyuEtFFzP6ilDodKvB58kGWhhbcwqiaL7
	X/TaxCpPJPcV009hwnogsDkHiBOOkwg=
X-Google-Smtp-Source: ABdhPJwDkNC+mbLnYJ6u5ojCKQ/n6D7uEm/Tv7dJreoZc/ErmfdCYw81qtVDVeJlpnw9MPoaCsE/Jg==
X-Received: by 2002:a05:600c:1d87:b0:37b:fdd5:bca4 with SMTP id
	p7-20020a05600c1d8700b0037bfdd5bca4mr8600117wms.4.1645219848107;
	Fri, 18 Feb 2022 13:30:48 -0800 (PST)
Received: from [192.168.1.130] ([90.250.160.235])
	by smtp.gmail.com with ESMTPSA id
	p1-20020a05600c430100b0037bd9b73ff3sm482781wme.5.2022.02.18.13.30.47
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 13:30:47 -0800 (PST)
Subject: Re: Accessibility of installing Distros?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
	<ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
	<98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
	<b4ac119d-cdf-7148-bc49-ab67e2ee751b@panix.com>
	<8c364cb-a27b-bfc1-692-60bed09fe233@brandt-slint.local>
	<da65fc-344a-9e1d-835e-417e8b11c0a3@panix.com>
	<9276cbb6-d550-e929-1880-451bde2003eb@gmail.com>
	<6c414d23-2677-ec44-931b-9e0116b332e@brandt-slint.local>
Message-ID: <6336c392-b51b-6a54-1ca5-d941d0526e1f@gmail.com>
Date: Fri, 18 Feb 2022 21:30:21 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <6c414d23-2677-ec44-931b-9e0116b332e@brandt-slint.local>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBtYXkgYmUgd2F5IG9mZiBvbiB0aGlzLCBidXQgdG8gbXkgZWFycywgdGhlIHNwZWVkIGlzIGJv
dXQgdGhlIHNhbWUgCndpdGggYSB5YXkgLVMgKG9yIFBhcnUgb3IgaG93ZXZlciB5b3UgaW5zdGFs
bCB5b3VyIEFVUiBwYWNrYWdlcykgZmVucmlyIApvciBmZW5yaXItZ2l0IHRob3VnaC4gSXQncyBu
b3Qgc28gbXVjaCB0aGUgc3BlZWQgSSdtIGZpbmRpbmcgYSBwcm9ibGVtLCAKaXQncyB0aGUgdm9p
Y2UsIGJ1dC4uLgoKSSBjYW4gZG8gOTklIG9mIHdoYXQgSSB3YW50IGluIFJhdHBvaXNvbiB0aG91
Z2gsIGFuZCBvbmx5IHJlYWxseSBuZWVkIGEgClRUWSBmb3IgbG9nZ2luZyBpbiB0aG91Z2guIE9u
Y2UgUmF0cG9pc29uJ3MgdXAgYW5kIHJ1bm5pbmcgaXQncyBnb29kIG9sZCAKT3JjYSBhbmQgZXNw
ZWFrLU5HIGluIG15IGhlYWRwaG9uZXMKCkxpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gd3JvdGU6Cj4gVXNpbmcgZXNwZWFrIEkgY2FuIGRvIHJlYWxseSBmYXN0LCBidXQgc3ludGhl
c2l6b3JzIHRoYXQgdHJ5IGFuZCBzb3VuZCAKPiBodW1hbiwgc29ycnksIGJ1dCB0aGUgZGVhZmJs
aW5kIGd1eSBpbiB0aGUgcm9vbSBzaW1wbHkgZ2V0cyBhIGhlYWRhY2hlIAo+IGFuZCBnZXRzIGxv
c3NlZC4KPgo+IFdhcm0gcmVnYXJkcywKPgo+IEJyYW5kdCBTdGVlbmthbXAKPgo+IFNlbnQgZnJv
bSB0aGUgU2xpbnQgY29uc29sZSB1c2luZyBBbHBpbmUKPgo+IE9uIEZyaSwgMTggRmViIDIwMjIs
IExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4KPj4gRGF0ZTogRnJp
LCAxOCBGZWIgMjAyMiAxOTo0MDo1OCArMDAwMAo+PiBGcm9tOiBMaW51eCBmb3IgYmxpbmQgZ2Vu
ZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPgo+PiBUbzogTGludXggZm9y
IGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4KPj4gU3Vi
amVjdDogUmU6IEFjY2Vzc2liaWxpdHkgb2YgaW5zdGFsbGluZyBEaXN0cm9zPwo+Pgo+PiBHb2lu
ZyBvZmYgb2YgdmFuaWxsYSBBcmNoIGhlcmUgYnV0IGl0IHVzZXMgZXNwZWFrdXAgYnkgZGVmYXVs
dCBhcyB0aGUgCj4+IHNwZWVjaCBzeW50aCBhbmQgbWV0aG9kIGluIHRoZSBhY2Nlc3NpYmxlIGJv
b3QgKHdoaWNoIGlzIGRvd24gYXJyb3cgCj4+IHdoZW4gYm9vdGluZyBvZmYgYSBzdGljayBvciBD
RCkgYW5kIGl0J3MgZWFzeSB0byB1bmRlcnN0YW5kLiBJIGdldCAKPj4gaXQuIFNvbWUgcGVvcGxl
IGNhbiBkbyBzdHVwaWRseSBoaWdoIHNwZWVjaCByYXRlcy4gQnV0IG5vdCBldmVyeW9uZSAKPj4g
Y2FuLiBJJ3ZlIGxlZnQgZXNwZWFrdXAgYWxvbmUgb24gbXkgYm94IGFuZCBpdCB3b3JrcyBwcmV0
dHkgd2VsbCwgSSAKPj4gY2FuIGFkanVzdCBpdCBlYXNpbHkgYW5kIGl0J3MgZWFzeSB0byB1bmRl
cnN0YW5kIGFuZCBmb2xsb3cgYWxvbmcgCj4+IHdpdGguIEV2ZW4gYXQgdG9wIHNwZWVkIGl0J3Mg
bm90IGluc2FuZWx5IGZhc3QKPj4KPj4gTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biB3cm90ZToKPj4+IElmIHlvdSBpbnN0YWxsIGVzcGVhay1uZyBpbiBleHRyYSBwYWNrYWdlcyB0
aGVuIGluIHRoZSBjaHJvb3QgCj4+PiBlbnZpcm9ubWVudDoKPj4+IHN5c2N0bCBkaXNhYmxlIGZl
bnJpcgo+Pj4gdGhlbiBzeXNjdGwgZW5hYmxlIGVzcGVhawo+Pj4gYmVmb3JlIHJlYm9vdGluZyB0
aGF0IHNob3VsZCBhdCBsZWFzdCBwdXQgYW4gZW5kIHRvIGZlbnJpciBldmVudHVhbGx5Lgo+Pj4g
VGhlIGZlbnJpciBzcGVlY2ggc3BlZWQgaXMgdG9vIGZhc3Q7IGl0IGNhbiBiZSBhZGp1c3RlZCBk
b3dud2FyZCBidXQgSQo+Pj4gdGhpbmsgbmV2ZXIgb3VnaHQgdG8gaGF2ZSBiZWVuIHNldCB0aGF0
IGZhc3QgZm9yIGluc3RhbGxhdGlvbiBvcgo+Pj4gcG9zdC1pbnN0YWxsIHVzZS7CoCBNYXliZSBz
cGVlY2gtcmF0ZT0wLjUgd291bGQgYmUgYmV0dGVyIGFuZCBhdCB0aGUgCj4+PiBzcGVlZAo+Pj4g
ZXNwZWFrIHVzZXMgYnkgZGVmYXVsdC4KPj4+Cj4+Pgo+Pj4gT24gRnJpLCAxOCBGZWIgMjAyMiwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Cj4+Pj4gVGhlIGlz
c3VlIGlzIHRoYXQgaXQncyBhbHJlYWR5IG9uIGEgZGVza3RvcCwgdXN1YWxseSBNYXRlLgo+Pj4+
Cj4+Pj4gSWYgSSBpbnN0YWxsIGl0IGFnYWluLCBJJ20gaW5zdGFsbGluZyBpdCBjb25zb2xlIG9u
bHksIGFuZCB0aGVuIAo+Pj4+IGJ1aWxkaW5nIAo+PiBpdCBhcwo+Pj4+IEkgc2VlIGZpdCwgd2hp
Y2ggd291bGQgYmUgd2l0aCByYXRwb2lzb24gb25seS4KPj4+Pgo+Pj4+IFdpbGwgcHJvYmFibHkg
Z28gdG8gQXJjaCBkaXJlY3RseSBhbnl3YXkuIFdoeSBnZXQgc29tZXRoaW5nIHRoYXQsIAo+Pj4+
IGZpcnN0bHkKPj4+PiBzcGVha3Mgd2l0aCBhIFNjcmVlbiByZWFkZXIgSSBuZXZlciBib3RoZXJl
ZCB0byBsZWFybiwgc2luY2UgCj4+Pj4gU3BlYWt1cCB3b3Jrcwo+Pj4+IHdlbGwgZW5vdWdoIGZv
ciBteSBuZWVkcywgc2Vjb25kbHkgc3BlYWtzIHNvIGRhcm4gZmFzdCBubyBodW1hbiBjYW4gCj4+
IHVuZGVyc3RhbmQKPj4+PiB0aGUgdGhpbmcsIGVzcGVjaWFsbHkgaWYsIGxpa2UgbWUgeW91IGNh
biBoYXJkbHkgaGVhciBhbnl0aGluZyBhbnltb3JlIAo+PiBhbnl3YXk/Cj4+Pj4KPj4+PiBJIGNh
biBidWlsZCBteSBzeXN0ZW0gaW4gdmFuaWxsYSBBcmNoIGFzIHdlbGwgYXMgd2l0aCBhbnl0aGlu
ZyAKPj4+PiBlbHNlLiBJLCAKPj4gZm9yCj4+Pj4gZXhhbXBsZSB3b3VsZG4ndCBpbnN0YWxsIEZp
cmVmb3ggYXQgYWxsLCBidXQgcHJvYmFibHkgb25lIG9mIHRoZSAKPj4+PiBDaHJvbWl1bQo+Pj4+
IGJhc2VkIGJyb3dzZXJzIHBsdXMgZWxpbmtzIGZvciB3aGVuIEknbSBiZWVpbmcgbGF6eSBhbmQg
d2FudCB0byAKPj4+PiBzdGF5IG9uIGEKPj4+PiBjb25zb2xlLgo+Pj4+Cj4+Pj4gV2FybSByZWdh
cmRzLAo+Pj4+Cj4+Pj4gQnJhbmR0IFN0ZWVua2FtcAo+Pj4+Cj4+Pj4gU2VudCBmcm9tIHRoZSBT
bGludCBjb25zb2xlIHVzaW5nIEFscGluZQo+Pj4+Cj4+Pj4gT24gRnJpLCAxOCBGZWIgMjAyMiwg
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pgo+Pj4+PiBEYXRl
OiBGcmksIDE4IEZlYiAyMDIyIDEzOjQxOjE5IC0wNTAwCj4+Pj4+IEZyb206IExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Cj4+Pj4+IFRv
OiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPgo+Pj4+PiBTdWJqZWN0OiBSZTogQWNjZXNzaWJpbGl0eSBvZiBpbnN0YWxsaW5nIERpc3Ry
b3M/Cj4+Pj4+Cj4+Pj4+IEhhdmUgeW91IHRyaWVkIHJ1bm5pbmcgc3RhcnR4IHRvIHR1cm4gb3Jj
YSBvbj/CoCBZb3UgbWF5IGZpbmQgdGhhdCAKPj4+Pj4gd29ya3MuCj4+Pj4+Cj4+Pj4+Cj4+Pj4+
IE9uIEZyaSwgMTggRmViIDIwMjIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
d3JvdGU6Cj4+Pj4+Cj4+Pj4+PiBTb21ldGltZXMgaXQgd291bGQgZmluaXNoIHRoZSBpbnN0YWxs
LCB0aGVuIHJlYm9vdCwgYW5kIGNvbWUgdXAgCj4+Pj4+PiBzcGVha2luZwo+Pj4+Pj4gd2l0aAo+
Pj4+Pj4gRmVucmlyIHdpdGggYSB2ZXJ5IGFubm95aW5nIHZvaWNlLCBlc3BlY2lhbGx5IGlmIHlv
dSwgbGlrZSBtZSBpcyAKPj4+Pj4+IGxlZ2FsbHkKPj4+Pj4+IGRlYWZibGluZCwgdGhlbiBhZnRl
ciB0eXBpbmcgeW91ciB1c2VybmFtZSBhbmQgcGFzc3dvcmQsIEZlbnJpciAKPj4+Pj4+IHdvdWxk
IAo+PiBqdXN0Cj4+Pj4+PiBkaWUKPj4+Pj4+IGFuZCB5b3UgYXJlIHN0dWNrLCBJIGtub3cgaXQn
cyBhIGRlc2t0b3AgZW52aXJvbm1lbnQsIGJ1dCBub3RoaW5nIAo+Pj4+Pj4gdHVybnMKPj4+Pj4+
IG9yY2EKPj4+Pj4+IG9uLgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBTbyBtdWNoIGZvciBhbiBhY2Nl
c3NpYmxlIGRpc3Ryby4KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gVGhpcyBpcyB3aHkgSSBsb3ZlIFNs
aW50LiBJdCBkb2VzIGV4YWN0bHkgd2hhdCAieW91IiwgdGVsbCBpdCB0byAKPj4+Pj4+IGRvLCBu
b3QKPj4+Pj4+IHRoZQo+Pj4+Pj4gZGV2Lgo+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBObyBkaXNyZXNw
ZWN0IHRvIE1yLiBOYXNoLCBJJ20gc3VyZSBoZSdzIGEgcGVyZmVjdGx5IG5pY2UgZ3V5LCAKPj4+
Pj4+IG5vdCB0aGF0Cj4+Pj4+PiBJJ3ZlCj4+Pj4+PiBldmVyIHNwb2tlbiB0byBoaW0gdGhvdWdo
Lgo+Pj4+Pj4KPj4+Pj4+IFdhcm0gcmVnYXJkcywKPj4+Pj4+Cj4+Pj4+PiBCcmFuZHQgU3RlZW5r
YW1wCj4+Pj4+Pgo+Pj4+Pj4gU2VudCBmcm9tIHRoZSBTbGludCBtYWNoaW5lIHVzaW5nIFRodW5k
ZXJiaXJkCj4+Pj4+Pgo+Pj4+Pj4gT24gMjAyMi8wMi8xOCAxNzoxMCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPj4+Pj4+PiBNYWtlcyBhdCBsZWFzdCB0d28gb2Yg
dXMuwqAgVGhlIGluc3RhbGxlciBhbHdheXMgZm91bmQgaXRzZWxmIAo+Pj4+Pj4+IGxvb3Bpbmcg
Cj4+IGFuZAo+Pj4+Pj4+IHJlcGVhdGluZyBmYWlsZWQgcGFja2FnZSByZXRyaWV2YWwuCj4+Pj4+
Pj4KPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4gQ2hlZXJzLAo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+
Pgo+Pj4+Pj4+IERhdmUKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+Pgo+Pj4+Pj4+IE9u
IDIvMTcvMjIgMTM6MTIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+Pj4+Pj4+IEkgY291bGQgbmV2ZXIgZ2V0IEplbnV4IHRvIHdvcmsgY29ycmVjdGx5IG9uIG15
IHNldHVwLgo+Pj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+Pj4+Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+Pj4+Pj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+Pj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4+Pj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4+Pj4+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+Pj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Pj4+Cj4+Pj4+Cj4+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4+IEJsaW51eC1saXN0
IG1haWxpbmcgbGlzdAo+Pj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+Pj4+IGh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0Cj4+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+PiBodHRwczov
L2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGlu
dXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3Q=

