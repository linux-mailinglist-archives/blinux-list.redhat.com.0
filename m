Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 22AA3463F50
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 21:32:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638304336;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nf6WuOPd7M7fZqeKhboPAc2NcpT8c7rSwiKe+8bG8uA=;
	b=aSH8G+36Au8rpBgenvjiBWJdFDIUbf7+WrHc3yNLJFEVbqA4mxy8cOCydX5W7yzjnFU6QP
	EoKlT9lPD8GZqG2DZPsRKLzRd37Y8ZYq1Cw2QIIE3hzleR1N9T3DRDht0sxLAWzCMY5Y6s
	cvddxkYgsP4Tl6ccb9P+UVdeV8ewttU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-199-Zp0coWeJNVmIIzwa4v3FDw-1; Tue, 30 Nov 2021 15:32:11 -0500
X-MC-Unique: Zp0coWeJNVmIIzwa4v3FDw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CE08184BA40;
	Tue, 30 Nov 2021 20:32:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4C9F45D6BA;
	Tue, 30 Nov 2021 20:32:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A3DD81809C8A;
	Tue, 30 Nov 2021 20:32:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUKW2ud026018 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 15:32:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 31E1A4010FF6; Tue, 30 Nov 2021 20:32:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C68440CFD0F
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:32:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 13C33801212
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 20:32:02 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-50-Hrs_uwpwMNyNCQ6fBAwHaw-1; Tue, 30 Nov 2021 15:32:00 -0500
X-MC-Unique: Hrs_uwpwMNyNCQ6fBAwHaw-1
Received: by mail-ed1-f45.google.com with SMTP id r11so92110463edd.9
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 12:32:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Q8sBqTo24ENK520trKDwbdkjpIOBbY/FwByrJdKLyX8=;
	b=RBoL6l/cPGkIc8eWE2FX3vGFFij3H2YN5kxDE0Ce3WeUC3E6qZOhud7uooX/u2Yog4
	PyQQHJzOzQmS4yDvdWXIIax0KHgIPZI2lDOuDiF1N42lfihIVsly0VkbDjXuLACagmqh
	EfW+YDealEIO6ymlnsuSKXW+bLydk7gAFr4mt63DYoD2wf8r8dLe9VygxQAPhrCxn0Jh
	QAMNdKET1ITHamMOImWohjocnPML2EUaVvMNvlHeLj7Fv7YbS+qL299UQLotUkNPOyXX
	i90vbksQH232XRsLQ32TYABVz6YvFwIZvzs7UlvygmUMlFSm3XWo5AFdWKcthuLraX6C
	RdPg==
X-Gm-Message-State: AOAM532QSEXisxNIBS4B0adwNshkPCRsK/Y3JWomLOS/RM8R269COoLs
	X8qoiNHNWj03+CI8rIogCKJQ6n7anDmMZw==
X-Google-Smtp-Source: ABdhPJzyD6J1AaEjLhaSkCy4LUQLYbMzHktowZVnCPmeeVKLooBqCyNzDQTQ2eK/l35KFn4YGjJjvg==
X-Received: by 2002:a17:906:9b92:: with SMTP id
	dd18mr1642641ejc.290.1638304318723; 
	Tue, 30 Nov 2021 12:31:58 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	de15sm9500032ejc.70.2021.11.30.12.31.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 12:31:58 -0800 (PST)
Message-ID: <bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
Date: Tue, 30 Nov 2021 22:31:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
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
	<d7fdfa4d-de81-02bc-eb50-f741e3ab0c63@gmail.com>
In-Reply-To: <d7fdfa4d-de81-02bc-eb50-f741e3ab0c63@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgYWxsLAoKCkkgaGF2ZSBiZWVuIGZvbGxvd2luZyB0aGlzIGRpc2N1c3Npb24gZm9yIGEgYml0
IGFuZCB3YXMgd29uZGVyaW5nLCBhbmQgCmhhdmUgYmVlbiBkb2luZyBzbyBmb3IgYSB3aGlsZSwg
d2hlcmUgZG8geW91IGdvIHRvIGxlYXJuIEVtYWNzPwoKCkV2ZW4gd29yc2UgaXMgRW1hY3NzcGVh
aywgdGhlIHVzZXIgZ3VpZGUgSSBjYW4gZmluZCBvdXQgdGhlcmUgaXMgbW9yZSAKdGhhbiAxMCB5
ZWFycyBvbGQuCgoKSXNuJ3QgdGhlcmUgYSBjb25jaXNlLCBlYXN5IHRvIGZvbGxvdyBzdGVwLWJ5
LXN0ZXAgZ3VpZGUgb3V0IHRoZXJlIHNvbWUgCndhcmU/CgoKSSdkIHRoaW5rIHRob3NlLCBzbyBw
YXNzaW9uYXRlIGFib3V0IHRoZWlyIGNob3NlbiBjaG9pY2Ugd291bGQgbWFrZSBpdCAKcG9zc2li
bGUgZm9yIHRoZSBuZXdiaWUgdG8gbGVhcm4sIEdlbnRvbyBhbmQgQXJjaCBkaWQgaXQsIHdoeSBu
b3QgRW1hY3MgCmFuZCBFbWFjc3NwZWFrPwoKCldhcm0gcmVnYXJkcywKCkJyYW5kdCBTdGVlbmth
bXAKClNlbnQgZnJvbSB0aGUgRmVkb3JhIG1hY2hpbmUsIHVzaW5nIFRodW5kZXJiaXJkCgpPbiAy
MDIxLzExLzMwIDE5OjQ1LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3Rl
Ogo+IEludGVyZXN0aW5nLiBUaGUgcHJvYmxlbSBpcyB0aGF0IGVtYWlsIGl0c2VsZiBoYXMgc2V2
ZXJhbCBjb21wb25lbnRzIAo+IHRoYXQgZG9uJ3QgZml0IHdlbGwgaW50byBhbiBlZGl0b3Igd2lu
ZG93LiBSZWFkaW5nIGFuZCB3cml0aW5nIGVtYWlscyAKPiBmb3IgZXhhbXBsZSBmaXRzIGludG8g
YW4gZWRpdG9yIHN0eWxlIHdpbmRvdyBqdXN0IGZpbmUsIGJ1dCBzZXR0aW5nIHVwIAo+IGVtYWls
IGFjY291bnRzLCBtb3ZpbmcgdGhyb3VnaCBmb2xkZXJzIGFuZCBsaXN0cyBvZiBtZXNzYWdlcywg
Cj4gZXhwYW5kaW5nIGFuZCBjb2xsYXBzaW5nIHRocmVhZHMsIGV0YyBqdXN0IGRvbid0IGZpdCBp
bnRvIHRoYXQgYm94IAo+IHZlcnkgd2VsbC4KPgo+IEkgYWxzbyBoYWQgYSBsb29rIGF0IG9uZSBw
b2ludCBhdCB0aGUgc2hlbGwgdGVybWluYWwuIFdoZXJlYXMgaXQncyAKPiBnb29kIHRvIGJlIGFi
bGUgdG8gZWRpdCB0aGUgY3VycmVudCBjb21tYW5kIGxpbmUsIEkgZm91bmQgdGhhdCAKPiBwcmVz
c2luZyB0aGUgdXAgYXJyb3cga2V5IHRvIHB1dCB0aGUgcHJldmlvdXMgY29tbWFuZCBiYWNrIG9u
IHRoZSAKPiBzY3JlZW4gdG8gZWl0aGVyIHJlcGVhdCBvciBtb2RpZnkgZGlkbid0IGJyaW5nIHVw
IHRoZSBwcmV2aW91cyAKPiBjb21tYW5kLCBidXQgaW5zdGVhZCBwdXQgbXkgY3Vyc29yIG9uIHRo
ZSBsYXN0IGxpbmUgb2YgdGhlIHByZXZpb3VzIAo+IGNvbW1hbmQncyBvdXRwdXQuIFNoZWxscyBu
ZWVkIHRvIGJlIGxpbmUgZWRpdGVkLCBub3Qgc2NyZWVuIGVkaXRlZCwgCj4gYW5kIHRoYXQncyB3
aGVyZSB0aGUgd2hvbGUgdGhpbmcgZmVsbCBmbGF0LCBlc3BlY2lhbGx5IHNpbmNlIGFzIEkgCj4g
cmVjYWxsLCBJIHdhcyBldmVuIGFibGUgdG8gYWNjaWRlbnRhbGx5IG92ZXJ3cml0ZSBjb21tYW5k
IG91dHB1dCAKPiBiZWNhdXNlIHRoZSB3aG9sZSBzY3JlZW4gaXMgaW4gYW4gZWRpdGFibGUgLi4u
IGJ1ZmZlciBJIHRoaW5rIHRoZXkgCj4gY2FsbCBpdC4KPgo+IFJlZ2FyZGluZyB0aGUga2V5IHNl
cXVlbmNlcywgeCBpcyBhIHdheSB0byBjcm9zcyBzb21ldGhpbmcgb3V0LCB4IGl0IAo+IG91dCwg
Y3V0IGl0LiBDIHN0YW5kcyBmb3IgY29weSwgYW5kIEkgZ3Vlc3MgdiBnb3QgaXRzIHBhc3RlIAo+
IGZ1bmN0aW9uYWxpdHkgYmVjYXVzZSBpdCdzIHJpZ2h0IG5leHQgdG8gY3V0IGFuZCBjb3B5LiBO
b3Qgc3VyZSBhYm91dCAKPiB0aGF0IG9uZS4gU3RpbGwsIGl0J3MgYmV0dGVyIHRoYW4gc29tZSBv
ZiB0aGUga2V5IGNvbWJpbmF0aW9ucyBJIGZpbmQgCj4gZXZlbiBpbiBuYW5vLCBjb250cm9sK3cg
dG8gZmluZCBzb21ldGhpbmcgZm9yIGV4YW1wbGUsIG9yIGV2ZW4gYmV0dGVyIAo+IGlzIGNvbnRy
b2wrcSwgd2hpY2ggaXMgc3VwcG9zZWQgdG8gcXVpdCwgYnV0IGluc3RlYWQgcGVyZm9ybXMgYSAK
PiBiYWNrd2FyZCBzZWFyY2guIFdoYXQgdGhlIC4uLj8gRW1hY3Mga2V5cyBhcmUgZXZlbiB3b3Jz
ZSwgc2luY2UgYXMgSSAKPiByZWNhbGwsIGZpbmRpbmcgc29tZXRoaW5nIHJlcXVpcmVzIHR3byBr
ZXkgY29tYmluYXRpb25zLCBhbmQgaWYgSSAKPiByZW1lbWJlciBjb3JyZWN0bHksIG5laXRoZXIg
aW5jbHVkZXMgYW4gZiBmb3IgZmluZCBvciBldmVuIGFuIHMgZm9yIAo+IHNlYXJjaC4gRW1hY3Mg
cHV0cyBtZSBpbiBtaW5kIG9mIHRoZSBvbGQgZGF5cyBvZiBhIGxpdHRsZSBwcm9ncmFtIEkgCj4g
dXNlZCBpbiBzY2hvb2wgY2FsbGVkIFR1cmJvIFBhc2NhbC4gVGhhdCBob3JyaWJsZSB0aGluZyAu
Li4gaWYgSSAKPiB3YW50ZWQgdG8gY29tcGlsZSB0aGUgcHJvZ3JhbSBJIGhhZCBqdXN0IHdyaXR0
ZW4sLcKgIEkgc3RpbGwgcmVtZW1iZXIgCj4gaXQgLSBJIGhhZCB0byBwcmVzcyBjb250cm9sK2sg
YW5kIHRoZW4gZC4gQWdhaW4sIHdoYXQgdGhlIC4uLj8gSSBkb24ndCAKPiBrbm93IC4uLiBJIGp1
c3QgZGlkIGl0IC4uLiBiZWNhdXNlIHRoYXQncyB3aGF0IHRoZSB0ZWFjaGVyIHRvbGQgbWUgSSAK
PiBoYWQgdG8gZG8gaW4gb3JkZXIgdG8gY29tcGlsZSBteSBwcm9ncmFtLiBOb3RoaW5nIGluIHRo
YXQga2V5IHNlcXVlbmNlIAo+IGNvdWxkIGJlIHRob3VnaHQgb2YgYXMgY29tcGlsZSBvciBldmVu
IGJ1aWxkLCB3ZWxsLCBtYXliZSB0aGUgZCBvbiB0aGUgCj4gZW5kIG9mIGJ1aWxkLiBCdXQgdGhh
dCBzdXJlIHdhcyBhIG5pZ2h0bWFyZSB0byBoYXZlIHRvIHJlbWVtYmVyIHRoYXQgCj4gdGhhdCdz
IHdoYXQgdGhhdCBjcmF6eSBjb21iaW5hdGlvbiBvZiBrZXlzIGRpZC4gSSBjYW4gb25seSBpbWFn
aW5lIAo+IGV2ZXJ5dGhpbmcgd29ya2luZyB0aGF0IHdheSwgd2hpY2ggd2FzIHRoZSBleHBlcmll
bmNlIEkgaGFkIHdoZW4gSSAKPiBsb29rZWQgYXQgc29tZSBFbWFjcyBkb2N1bWVudGF0aW9uLiBC
dXQgdGhlbiBJIGNvdWxkIGJlIHdyb25nLCBzaW5jZSAKPiB0aGUgbGFzdCB0aW1lIEkgZXZlbiBv
cGVuZWQgdGhlIGFwcGxpY2F0aW9uIHdhcyBwcm9iYWJseSAxNSB5ZWFycyBhZ28sIAo+IGFuZCBJ
IGRpZG4ndCBldmVuIHNlZSB0aGUgbmljZSBsaXR0bGUgaGVscCB0aGluZ3kgYXQgdGhlIGJvdHRv
bSBvZiB0aGUgCj4gc2NyZWVuIGxpa2Ugd2hhdCBJIGdvdCBmcm9tIE5hbm8gYW5kIFBpY28gdGhh
dCBJIGhhZCB1c2VkIGJlZm9yZSBpdC4gCj4gQXQgbGVhc3QgaW4gdmltIEkgd2FzIGFibGUgdG8g
dXNlIHRoZSA6aGVscCBjb21tYW5kIHRvIGdldCBtZSBzdGFydGVkLCAKPiBidXQgZXZlbiB0aGF0
IHdhcyBtdWNoIG1vcmUgY29tcGxpY2F0ZWQgdGhhbiBpdCBuZWVkZWQgdG8gYmUsIAo+IGVzcGVj
aWFsbHkgd2hlbiBJIGp1c3Qgd2FudGVkIHRvIGN1dCBzb21ldGhpbmcgYW5kIHBhc3RlIGl0IHNv
bWV3aGVyZSAKPiBlbHNlIGluIHRoZSBzYW1lIGZpbGUuIEkgZG8gbGlrZSBpdHMgc2VhcmNoIGFu
ZCByZXBsYWNlIGZ1bmN0aW9uYWxpdHkgCj4gdGhvdWdoLiAlcy9zb21ldGhpbmcvZWxzZS9nIGlm
IEkgcmVtZW1iZXIgY29ycmVjdGx5LCBqdXN0IGxpa2UgaW4gdGhlIAo+IHNlZCBjb21tYW5kLCB3
aWxsIHJlcGxhY2UgZXZlcnkgb2NjdXJyZW5jZSBvZiBzb21ldGhpbmcgd2l0aCBlbHNlLiAKPiBU
aGF0IHNhaWQsIEkgY2FuIGp1c3QgYXMgZWFzaWx5IHJ1biBhIGZpbmQgYW5kIHJlcGxhY2UsIHB1
dCBzb21ldGhpbmcgCj4gaW4gdGhlIHNlYXJjaCBmaWVsZCBhbmQgZWxzZSBpbiB0aGUgcmVwbGFj
ZSBmaWVsZCwgdGhlbiB0aWNrIHRoZSBib3ggCj4gdGhhdCBzYXlzIHJlcGxhY2UgYWxsLCBhbmQg
aXQncyBqdXN0IGFzIGdvb2QsIGFuZCBkb2Vzbid0IGV2ZW4gdXNlIAo+IG1vcmUgZmluZ2Vycywg
c2luY2UgdGhlIHRhYiBrZXkgaXMgcmVwbGFjaW5nIHRoZSAvIGtleSBpbiB0aGlzIHVzZSBjYXNl
Lgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

