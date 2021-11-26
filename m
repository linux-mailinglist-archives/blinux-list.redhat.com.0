Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E14A045F508
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 20:09:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637953746;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vuw2gaWi9PAcK1n2ycGrur9aThVZLJ2rLYsJvrPtBY8=;
	b=H9z89Sn7gdhBhuS/5V+UAJkqHcowcbj3eiLctpRvFAxE4bl4Dx2QZf3teKlFw/JvNulK2D
	eaFJZCcha9Re29hG9WnL9MhtMTeec3mjP/SrJbawipAplIdRJaP7zq4iBrgcqJ/vLtABA8
	SaYzZwtglhCXVaB2D+b4bNxUR0IIHsc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-12-8Vgdu-8uNqCIAbo4T8yVkQ-1; Fri, 26 Nov 2021 14:09:02 -0500
X-MC-Unique: 8Vgdu-8uNqCIAbo4T8yVkQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A31A1853022;
	Fri, 26 Nov 2021 19:08:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F2BF67840;
	Fri, 26 Nov 2021 19:08:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4F3E1809C89;
	Fri, 26 Nov 2021 19:08:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQJ8cup009743 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 14:08:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4F76F40CFD13; Fri, 26 Nov 2021 19:08:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A91B40CFD08
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 19:08:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 21659802814
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 19:08:38 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-23-KL8uopKvOom3yAhceVqlIw-1; Fri, 26 Nov 2021 14:08:36 -0500
X-MC-Unique: KL8uopKvOom3yAhceVqlIw-1
Received: by mail-ed1-f45.google.com with SMTP id x15so42569626edv.1
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 11:08:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6bKelNn69AjH+STdfVk551JlPVAX8Fndn+f53VArf9c=;
	b=V6bR4C9Ck92dE9m5JhgkI2p3kHNCEJWt2oPEm78tlDoV2iImZlP3yXCbQPRAT6b9sx
	QGiSlUODg0n4iJZ1ej7UTeHWAZibyr2WR/985L8bIW2HKOA6cFU+hRoJPwFEhcnZjbgJ
	5vQxGSaq/j1Mu88sVbgFD9nMJ/qOl7BShWqRi4D5NT5Ti18HB7h/Ek8aT1QkR0NjgD5F
	BSs8LIXWrzX5XifqGbI6gDi6M72FRnMhj9UdBozafyXW2uNOk8qlDom314ARMWZeHLGd
	1K0P3XLcXb4zM0qiBnVlOcEE7fTYZihINh/d5+/RkBZMnIsyXDmEr2jSX9+4/mCxWjFb
	hj7Q==
X-Gm-Message-State: AOAM5337oIa5uykP3jGslGZwWffwhZ4tBoL0JisegSbqv5DFAlRroR9F
	9ot1dxUTTAnKugGX/kX2hnTTlYi13S8=
X-Google-Smtp-Source: ABdhPJwl8k9IxykH3hiMcat26NDikTpEHLFAAOaRRbq/TL6PhsDBvQSrEBrZZVqg8OA5DdVER6y2SA==
X-Received: by 2002:a05:6402:908:: with SMTP id
	g8mr50282583edz.59.1637953714661; 
	Fri, 26 Nov 2021 11:08:34 -0800 (PST)
Received: from slint-box.home.home ([197.184.178.30])
	by smtp.gmail.com with ESMTPSA id
	sa17sm3768196ejc.123.2021.11.26.11.08.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 26 Nov 2021 11:08:34 -0800 (PST)
Subject: Re: In the mood for something new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
	<b2d6ddcd-2ef7-1425-de0e-78a0c8d5697c@slint.fr>
	<97f47bb7-fcaf-aaf9-0732-0592fd341f18@gmail.com>
	<54a22fdb-8348-346b-170c-8e6f54ad7fbe@slint.fr>
Message-ID: <6235b7a3-ed4e-9795-c152-375142fff735@gmail.com>
Date: Fri, 26 Nov 2021 21:08:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <54a22fdb-8348-346b-170c-8e6f54ad7fbe@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKT2ssIEkgaGFkIGZ1biBwbGF5aW5nIHdpdGggRmVkb3JhIGZvciBhIGZldyBkYXlzLCBy
YW4gQ29jb251dCBhZ2FpbiBmb3IgCmEgY291cGxlIG9mIGhvdXJzLCBidXQgSSBqdXN0IGhhZCB0
byBnZXQgYmFjayBvbiBzbGludCwgd2hpY2ggSSBoYXZlIG5vdyAKZG9uZS4KCgpBbGwgbXkgc3R1
ZmYganVzdCB3b3Jrcywgd2hpY2ggaXMgdGhlIHdheSBJIGxpa2UgaXQuCgoKV2FybSByZWdhcmRz
LAoKQnJhbmR0IFN0ZWVua2FtcAoKU2VudCBmcm9tIHRoZSAiU2xpbnRCb29rIiB1c2luZyBUaHVu
ZGVyYmlyZAoKT24gMjAyMS8xMS8yNiAxNjowNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiBIaSBLeWxlLAo+Cj4gYW5zd2VycyBhZnRlciBpbmxpbmUgYWZ0ZXIg
dGhlIHF1b3RlZCBsaW5lcwo+Cj4gPiBSUE0gcGFja2FnaW5nIGZvcm1hdCwgYSBwbHVnaW4tYmFz
ZWQgbW9kdWxhciBwYWNrYWdlIG1hbmFnZW1lbnQgdG9vbAo+ID4gYWxvbmcgd2l0aCBncmFwaGlj
YWwgcGFja2FnZSBtYW5hZ2VtZW50Cj4gSSBoYXZlIHVzZWQgTWFuZHJha2UgbmVhcmx5IDIwIHll
YXJzIGFnbywgaXQgYWxyZWFkeSB1c2VkIFJQTSA7KQo+Cj4gU2xpbnQgdXNlcyB0aGUgc2ltcGxl
IHBhY2thZ2UgZm9ybWF0IGZyb20gU2xhY2t3YXJlIGFuZCB1c2UgdGhlIHNsYXB0LWdldAo+IHBh
Y2thZ2XCoCB0b29sIHRvIG1hbmFnZSB0aGUgcGFja2FnZXMuIEl0IGluY2x1ZGVzIHRoZSBnc2xh
cHQgZ3JhcGhpY2FsCj4gZnJvbnQtZW5kLCBoYW5kbGVzIGRlcGVuZGVuY2llcyByZXNvbHV0aW9u
IGFuZCBub3RpZmljYXRpb24gb2YgdXBkYXRlcyAKPiBvbiB0aGUKPiBkZXNrdG9wLiBObyBTbGlu
dCB1c2VycyByZXF1ZXN0ZWQgbW9yZSBzbyBmYXIuCj4gaHR0cHM6Ly9zbGludC5mci9kb2MvSGFu
ZEJvb2suaHRtbCNzb2Z0d2FyZV9tYW5hZ2VtZW50Cj4KPgo+ID4gdGhlIGNvcHIgc3lzdGVtIGlu
Y2x1ZGluZyBzZW1pYXV0b21hdGljIHNlcnZlcnNpZGUgYnVpbGRzCj4gVmVyeSBuaWNlLCBidXQg
ZG8gbW9zdCBlbmQgdXNlcnMgbmVlZCB0aGF0Pwo+Cj4gVG8gYnVpbGQgcGFja2FnZXMgZnJvbSB0
aGUgYnVpbGRpbmcgc2NyaXB0cyByZXBvc2l0b3J5IAo+IGh0dHBzOi8vc2xhY2tidWlsZHMub3Jn
Cj4gU2xpbnQgaW5jbHVkZXMgdGhlIHNsYXB0LXNyYyBhcHBsaWNhdGlvbiwgdmVyeSBlYXN5IHRv
IHVzZS4KPiBodHRwczovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sI3NsYXB0X3NyYwo+Cj4g
PiB0aGUgY2hvaWNlIG9mIGEgcmVsZWFzZSBjeWNsZSBvciBhIHJvbGxpbmcgcmVsZWFzZSBtb2Rl
bCwKPiBXZWxsLCB0aGF0IGxvb2tzIG5pY2UgaG93ZXZlciByZWFkaW5nIHRoZSBtZXNzYWdlcyBp
biB0aGlzIGxpc3QKPiBhbmQgZWxzZXdoZXJlIEkgYW0gbm90IHN1cmUgdGhhdCBldmVyeSB1c2Vy
IGJlIGhhcHB5IHdpdGggdGhhdC4uLgo+Cj4gQW55d2F5IG15IHByZWZlcnJlZCByZWxlYXNlIG9m
ZmVyIGJ5IEZyZWVCU0QsIHdoaWNoCj4gYWxzbyBvZmZlcnMgYSBjaG9pY2UgYmV0d2VlbiB0d28g
YnJhbmNoZXM6Cj4gaHR0cHM6Ly9kb2NzLmZyZWVic2Qub3JnL2VuL2Jvb2tzL2hhbmRib29rL2N1
dHRpbmctZWRnZS8jc3RhYmxlCj4gaHR0cHM6Ly9kb2NzLmZyZWVic2Qub3JnL2VuL2Jvb2tzL2hh
bmRib29rL2N1dHRpbmctZWRnZS8jY3VycmVudAo+Cj4gSSB0aGluayB0aGF0IG1vc3Qgb2Ygb3Vy
IHVzZXJzIHdvdWxkIG5vdCBsaWtlIGEgcm9sbGluZyByZWxlYXNlIG1vZGVsLCAKPiBzbyBTbGlu
dAo+IGZvbGxvdyBzZW1pLXJvbGxpbmcgbW9kZWw6IHJlbGVhc2VzIGFyZSBtYWRlIG9uIHRoZSBi
YXNpcyBvZiAKPiBTbGFja3dhcmUsIGJ1dAo+IHRoZW4gYSBsb3Qgb2Ygc29mdHdhcmUgYSBrZXB0
IHVwIHRvIGRhdGUgaW5jbHVkaW5nIGFsbCB0aGUgb25lcyBuZWVkZWQgCj4gZm9yCj4gYWNjZXNz
aWJpbGl0eSwgYXMgc2hvd3MgdGhpcyBDaGFuZ2VMb2c6Cj4KPiBodHRwczovL3NsYWNrd2FyZS51
ay9zbGludC94ODZfNjQvc2xpbnQtMTQuMi4xL0NoYW5nZUxvZy50eHQKPgo+ID4gc25hcGQgYW5k
IGZsYXRwYWsgaW5zdGFsbGFibGUgZnJvbSBvZmZpY2lhbCByZXBvc2l0b3JpZXMgb3IgaW5zdGFs
bGVkCj4gPiBieSBkZWZhdWx0Cj4KPiBXZWxsLCBJIGFtIG5vdCBmb25kIG9mIHRoZXNlIHBhY2th
Z2luZyBzeXN0ZW1zLiBBbnl3YXkgZmxhdHBhayBjYW4gYmUgCj4gZ2V0IGZyb20KPiBodHRwczov
L3NsYWNrYnVpbGRzLm9yZyBhcyBJIGp1c3QgZGlkIChob25lc3Q6IGhhZCB0byBmZXRjaCBtYW51
YWxseSAKPiBzb3VyY2UKPiB0YXJiYWxsIG9mIHR3byBkZXBzIGR1ZSB0byBicm9rZW4gbGlua3Mg
aW4gdGhlIHNjcmlwdHMsIGJ1dCBub3QgYSAKPiBkYXVudGluZwo+IHRhc2spLgo+Cj4gPiBub3Qg
YSBkZXJpdmF0aXZlIGRpc3Rybwo+IEkgZGlkbid0IHBsYW4gdG8gY3JlYXRlIGEgZGVyaXZhdGl2
ZSBkaXN0cm8sIGJ1dCBQYXRyaWNrIFZvbGtlcmRpbmcgCj4gZGlkbid0Cj4gYWNjZXB0IHRvIGlu
Y2x1ZGUgaW4gU2xhY2t3YXJlIHRoZSBzdHVmZiBuZWVkZWQgdG8gaW50ZXJuYXRpb25hbGl6ZcKg
IAo+IGl0IGFuZAo+IG1ha2UgaXQgYWNjZXNzaWJsZSwgdGhhdCdzIHdoeSBJIGhhZCB0by4gSSB3
b24ndCBjb21wbGFpbiwgYmVpbmcgZm9uZCBvZgo+IHN5c3RlbSBpbnRlZ3JhdGlvbi4KPgo+ID4g
ZmFyIG1vcmUgc29mdHdhcmUgYXBwbGljYXRpb25zIGF2YWlsYWJsZSBmcm9tIGFsbCBvZiBzeXN0
ZW0gCj4gcmVwb3NpdG9yaWVzLAo+ID4gdGhpcmQtcGFydHkgcmVwb3NpdG9yaWVzIHRoYXQgY2Fu
IGJlIGFkZGVkIGVhc2lseQo+IEJ5IGZhciBub3QgYXMgbWFueSBhdmFpbGFibGUgcGFja2FnZXMg
YXMgZm9yIERlYmlhbiA7KQo+IEkgYW0gaW1wcmVzc2VkIGFsc28gYnkgRnJlZUJTRCdzIHBvcnRz
IGFuZCBwYWNrYWdlcyBjb2xsZWN0aW9uLiBJdCAKPiBjb250YWlucyBhCj4gbG90IG9mIExpbnV4
IHNvZnR3YXJlLCByZWFsbHkgYSBsb3Qgb2Z0ZW4gdXAgdG8gZGF0ZS4KPgo+ID4gYWxsIHRoZSBu
ZXdlc3Qgc29mdHdhcmUgdmVyc2lvbnMgd2l0aCBzdXBwb3J0IGZvciB0aGUKPiA+IGxhdGVzdCBj
b21waWxlcnMsIHRvb2xjaGFpbnMgYW5kIHN5c3RlbSBsaWJyYXJpZXMsIG5vIG5lZWQgdG8gaG9s
ZCBiYWNrCj4gPiBuZXcgdXBzdHJlYW0gc29mdHdhcmUgYmVjYXVzZSBhIHRvb2xjaGFpbiBvciBj
b21waWxlciBpcyBvdXQgb2YgZGF0ZQo+IFdoaWxlIGl0IGlzIHRydWUgdGhhdCB3ZSBoYXZlIGEg
dmVyeSBvbGQgZ2NjIGFuZCBnbGliYyAod2FpdGluZyBmb3IgCj4gdGhlIHJlbGVhc2UKPiBvZiBT
bGFja3dhcmUgMTUgdG8gdXBncmFkZSksIHRoaXMgaGF2ZSByYXJlbHkgYmVlbiBhbiBpc3N1ZSBo
ZXJlIChyZWFkIAo+IG91cgo+IENoYW5nZUxvZyB0byBjaGVjaykuCj4KPiA+IGJyb2FkIGFuZCBk
aXZlcnNlIGNvbW11bml0eSBzdXBwb3J0Cj4gV2VsbCwgb3VyIG1haWxpbmcgbGlzdCBpcyBwcmV0
dHkgYWN0aXZlIGFuZCBjYW4gcHJvdmlkZSBhbnN3ZXIgY29taW5nIAo+IGRpcmVjdGx5Cj4gZnJv
bSB0aGUgZ3V5IHdobyBtYWludGFpbiB0aGUgZGlzdHJpYnV0aW9uIGFuZCBwYWNrYWdlcyBhbGwg
c29mdHdhcmUgCj4gaW4gaXRzCj4gcmVwb3NpdG9yaWVzLiBUcnkgdGhhdCB3aXRoIEZlZG9yYSA7
KQo+Cj4gPnN5c3RlbWQsIHdoaWNoIEkgaGFwcGVuIHRvIGxpa2UKPgo+IEkgZG9uJ3QgZmVlbCBh
IG5lZWQgZm9yIHRoYXQuIHN5c3Zpbml0IGluIFNsaW50IHdvcmtzIHByZXR0eSB3ZWxsLCBhbmQg
Cj4gbm8gdXNlcgo+IGV2ZXIgcmVxdWVzdGVkIHRvIHJlcGxhY2UgaXQgYnkgc3lzdGVtZC4KPiBJ
IHJlYWxseSBsaWtlIHRoZSBpbml0IHN5c3RlbSB1c2VkIGJ5IEZyZWVCU0QgdGhvdWdoLgo+IGh0
dHBzOi8vd3d3LmZyZWVic2Qub3JnL2NnaS9tYW4uY2dpP2luaXQKPgo+ID4gYW5kIFBpcGV3aXJl
IGFuZCBXaXJlcGx1bWJlciBpbnN0YWxsZWQgYnkgZGVmYXVsdCwgYWx0aG91Z2ggdGhlc2UgZG8K
PiA+IHN0aWxsIGhhdmUgdGhlaXIgYnVncy4KPiBXZWxsLCB3ZSB3aWxsIGhhdmUgdGhhdCBpbiBu
ZXh0IFNsaW50IHZlcnNpb24uCj4KPiBUaGlzIGJlaW5nIHNhaWQsIFNsaW50IG1heSBub3QgYmUg
Zm9yIHVzZXJzIGxvb2tpbmcgZm9yIHRoZSBtb3N0IAo+IGJsZWVkaW5nIGVkZ2UuCj4KPiBCb3R0
b20gbGluZTogSSBhbSBhbHdheXMgZWFnZXIgb2YgZmVlZGJhY2sgdG8gZW5oYW5jZSBTbGludC4K
PiBTbyBteSBmcmllbmQgeW91ciBuZXh0IG1pc3Npb24sIGlmIHlvdSBhY2NlcHQgaXQsIGlzIHRv
IGluc3RhbGwgU2xpbnQgCj4gKHBvc3NpYmx5Cj4gb24gYSByZW1vdmFibGUgZGV2aWNlLCBpbmNs
dWRpbmcgYSBnb29kIFNEIGNhcmQgaWYgeW91ciBmaXJtd2FyZSBjYW4gCj4gaGFuZGxlCj4gYm9v
dGluZyBmcm9tIGl0KSBhbmQgcmVwb3J0IGFsbCBmb3VuZCBpc3N1ZXMuCj4KPiBBbGwgbmVlZGVk
IGluZm9ybWF0aW9uIGlzIGluIHRoZSBIYW5kQm9vazoKPiBodHRwczovL3NsaW50LmZyL2RvYy9I
YW5kQm9vay5odG1sCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+
IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

