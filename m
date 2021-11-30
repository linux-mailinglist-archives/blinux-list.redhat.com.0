Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC85463C79
	for <lists+blinux-list@lfdr.de>; Tue, 30 Nov 2021 18:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638291869;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XC2v7fOgWt4snOvm6U3P156UdY72Jn3LoykCJOBhKHM=;
	b=PrJfFXT/DoKFcBngrpNkqoWz3wCTw6kn0kxNisV8sn2kQL+IE7DtC2JTd995WabtXFJxsX
	u4axyo5GVzeocY46/3zJ1/dvcLG9hc7cgMC7rCTOYg7riTRU8ESm4b+7Ro2gzOTCCARkEg
	FJCuar+WIh7GOLcgtRmUXmryY9+TZAI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-421-ZRRI-gJ_OziVhP81-7S7KA-1; Tue, 30 Nov 2021 12:04:27 -0500
X-MC-Unique: ZRRI-gJ_OziVhP81-7S7KA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 757DA192D787;
	Tue, 30 Nov 2021 17:04:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 93A6F60C0F;
	Tue, 30 Nov 2021 17:04:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0867F1809C89;
	Tue, 30 Nov 2021 17:04:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AUH4DlU007238 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 12:04:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7ED46492C3B; Tue, 30 Nov 2021 17:04:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A68B492C38
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:04:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60C54185A7B4
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 17:04:13 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
	[209.85.208.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-265-6RqbE7g-OwytavpcsB8-jA-1; Tue, 30 Nov 2021 12:04:11 -0500
X-MC-Unique: 6RqbE7g-OwytavpcsB8-jA-1
Received: by mail-ed1-f52.google.com with SMTP id r11so89766087edd.9
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 09:04:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=ZdxF5pn2vbC69H8p+6lBpyuoIPbZku8+9wApRE7aPXs=;
	b=Hdqxg/nXSxBGcSdg/u94ZkeTXQhorhZhbbdPXuX6iO3ZMseFKsvabK4hBBjtWqkpvn
	x6Tx5ZaDqAAmFJIeLbuQpzvUtesa8PqyEJO7jYljOkPSwZBb5QVFAHtKL7ZJx54rI1pd
	zaZYtI7pQwF6TFPUKfXbm3/Wm7wJFG9PiDQOptwDjqLTktwsgc5GgaPbE+0lwtb9iZ6X
	rYH+VJVDpM4c1q76ncV2Y0Ml7aUBfMMq82p9rT01DH1DVF5jb91o40ci125b7kVn1Myt
	25IrRCI89rp+5aSkZVgpjLnZBjb5FhPFPOjssvaU/S+65cYeewg1VWOYJTZm8YMIE81j
	eljA==
X-Gm-Message-State: AOAM533Y/pgMlR7GjsPN5LDoLj/S4b5X8CrH4N9CK6O6zXlhzbQMdcpR
	8DYSh3DYUEzkiIM/ZFuiOwFdg6Sm4fGEQw==
X-Google-Smtp-Source: ABdhPJwVkK0nP3O6sgCYk7EDPl2HlFbIXT3dvCuyJvzznenAsqgfBY/QJgULZRNg1RPL7T94Eod54g==
X-Received: by 2002:a05:6402:4301:: with SMTP id
	m1mr345712edc.54.1638291849792; 
	Tue, 30 Nov 2021 09:04:09 -0800 (PST)
Received: from [192.168.8.130] ([41.216.201.233])
	by smtp.gmail.com with ESMTPSA id
	f7sm11634604edw.44.2021.11.30.09.04.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 09:04:09 -0800 (PST)
Message-ID: <6e05f217-8320-8579-6a9c-1afbef3cbcda@gmail.com>
Date: Tue, 30 Nov 2021 19:04:06 +0200
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
	<fbe62f18-abaf-ac16-9f35-feab63c910d9@gmail.com>
In-Reply-To: <fbe62f18-abaf-ac16-9f35-feab63c910d9@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKV2hlbiBJIHJ1biBTbGludCwgbXkgdHdpdHRlciBjbGllbnQsIENhd2JpcmQgaXMgbm90
IG5hdGl2ZWx5IGF2YWlsYWJsZSAKdGhyZXcgZWl0aGVyIHNsYXB0LWdldCBvciBzbGFwdC1zcmMs
IHNvIEkgaW5zdGFsbCBpdCB1c2luZyBmbGF0cGFrLiAKQXBwbGljYXRpb25zIHN1Y2ggYXMgU2t5
cGUgaXMgYWxzbyBlYXNpZXIgdG8gaW5zdGFsbCBhbmQgbWFpbnRhaW4gdXNpbmcgCmZsYXRwYWsu
IFllcywgSSBrbm93IHlvdSBjYW4gcHJvYmFibHkgaW5zdGFsbCBpdCBzb21lIG90aGVyIHdheSwg
YnV0IHdoeSAKbWFrZSB5b3VyIG93biBsaWZlIGhhcmRlcj8KCldhcm0gcmVnYXJkcywKCkJyYW5k
dCBTdGVlbmthbXAKClNlbnQgZnJvbSB0aGUgRmVkb3JhIG1hY2hpbmUsIHVzaW5nIFRodW5kZXJi
aXJkCgpPbiAyMDIxLzExLzMwIDE4OjUwLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgo+IFdoYXQgd291bGQgYSBmbGF0cGFrIGRvIGZvciBtZSBhcyBhIGRlc2t0b3Ag
Z3VpIHVzZXI/IE15IHVuZGVyc3RhbmRpbmcgCj4gaXMgdGhhdCBpcyBzdXBwb3NlZCB0byBhbGxv
dyBtZSB0byBydW4gcGFja2FnZXMgd2hpY2ggYXJlIG5vdCBwYXJ0IG9mIAo+IHRoZSBkaXN0cmli
dXRpb24gaW4gd2hhdCBpcyBzbyBjYWxsZWQgYSBzYW5kYm94LiBidXQgaWYgdGhlIGd1aSAKPiB2
ZXJzaW9uIG9mIGl0IGlzIG5vdCBhY2Nlc3NpYmxlIGl0IHdvdWxkIGJlIG9mIGxpbWl0ZWQgdXNl
IGZvciBtZS4gSSAKPiB3aWxsIGluc3RhbGwgaXQgYW55d2F5IG9uY2UgeW91IG1ha2UgaXQgYXZh
aWxhYmxlLgo+Cj4gQ2hlZXJzLAo+Cj4gRGlkaWVyCj4KPiBPbiAxMS8yOS8yMSA3OjIyIFBNLCBM
aW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBIaSBJYnJhaGltIGFu
ZCBBbGwsCj4+Cj4+IG5vIE1pY3JvIGlzIG5vdCBwcm92aWRlZCBieSBTbGludCAoeWV0KS4gSSBs
ZWFybmVkIGl0cyBleGlzdGVuY2UgCj4+IHRvZGF5IDxzbWlsZT4uCj4+Cj4+IEkgaGF2ZSBidWls
dCBmbGF0cGFrIGFuZCBwaXBlLXZpZXdlciBhbmQgYWxzbyBpdHMgR1VJIGd0ay1waXBlLXZpZXdl
ciAKPj4gKG5vdCBmdWxseQo+PiBhY2Nlc3NpYmxlLCBidXQgbmljZSkuCj4+Cj4+IEl0IHRvb2sg
bWUgbW9yZSB0aW1lIHRoYW4gYW50aWNpcGF0ZWQsIGJ1dCBleHBlY3QgYSBiaWcgYmF0Y2ggb2Yg
Cj4+IHVwZGF0ZXMgZm9yCj4+IFNsaW50IHRvbW9ycm93ICgzNyBwYWNrYWdlcywgaW5jbHVkaW5n
IHRoZSBtYW55IGRlcGVuZGVuY2llcyBvZiBmaWxlIAo+PiB2aWV3ZXIpLgo+Pgo+PiBJIGRpZCBz
b21lIHJlYWRpbmcgYW5kIHRlc3RzIHdpdGggZmxhdHBhaywgYW5kIHdvdWxkbid0IHJlY29tbWVu
ZCB0byAKPj4gdXNlIHRoYXQsCj4+IGVzcGVjaWFsbHkgaWYgc3BhY2Ugb24gZGlzayBpcyBhIGNv
bmNlcm4uCj4+IFdvcnRoIHJlYWRpbmcgYWJvdXQgdGhhdDoKPj4gaHR0cHM6Ly9sdWRvY29kZS5j
b20vYmxvZy9mbGF0cGFrLWlzLW5vdC10aGUtZnV0dXJlCj4+IEhvd2V2ZXIsICJjaG9zZSBwcm9t
aXNlLCBjaG9zZSBkdWUiIGFzIHdlIHNheSBoZXJlLCBhIGZsYXRwYWsgcGFja2FnZSAKPj4gd2ls
bCBiZQo+PiBhdmFpbGFibGUgZm9yIFNsaW50IHVzZXJzIHRvbW9ycm93Lgo+Pgo+PiBDaGVlcnMs
Cj4+Cj4+IERpZGllcgo+Pgo+PiBMZSAzMC8xMS8yMDIxIMOgIDAwOjMwLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4+PiBUaGFua3MgYSBidW5kbGUgZm9y
IGFsbCBvZiB5b3UgZm9sa3MuIEkgZGlkIG5vdCBrbm93IGhvdyBtdWNoIG9mIGEgCj4+PiBkaXNj
dXNzaW9uIG15IGlubm9jZW50IGFuZCBuYWl2ZSBxdWVzdGlvbiB3b3VsZCBnZW5lcmF0ZS4gSSBs
ZWFybmVkIAo+Pj4gYSBsb3QgZnJvbSB5b3VyIGFuc3dlcnMuIEFsdGhvdWdoIEkgaGF2ZSBuZXZl
ciBtZXNzZWQgd2l0aCAKPj4+IGNvbmZpZ3VyYXRpb24gZmlsZXMgc2luY2UgdGhlIGRheXMgb2Yg
dGhlIGF1dG9leGVjLmJhdCBpbiB0aGUgZGF5cyAKPj4+IG9mIGRvcywgSSB0aGluayBJIGhhdmUg
ZW5vdWdoIGNvdXJhZ2UgdG8gcGxheSB3aXRoIGNoYW5naW5nIHNvbWUgCj4+PiBjb25maWd1cmF0
aW9uIHNldHRpbmdzIHVzaW5nIHNvbWUgb2YgdGhlIGVkaXRvcnMgeW91IHN1Z2dlc3RlZC4KPj4+
Cj4+PiBJIGxhdW5jaGVkIGZldyBvZiB0aGVtIGJvdGggaW4gdGhlIGRlc2t0b3AgYW5kIGluIHRo
ZSB0ZXJtaW5hbCBhbmQgSSAKPj4+IGZvdW5kIGdlYW55IGFuZCBuYW5vIHRvIGJlIGVhc3kuIEkg
ZGlkIG5vdCBmaW5kIE1pY3JvLCBJIGd1ZXNzIGl0IGlzIAo+Pj4gbm90IHByZWluc3RhbGxlZCBv
biBzbGludC4KPj4+Cj4+PiBJIGtub3cgdGhhdCBteSBlZGl0aW5nIG5lZWRzIHdvdWxkIGJlIHZl
cnkgYmFzaWMuCj4+Pgo+Pj4gQ2hlZXJzLAo+Pj4KPj4+IElicmFoaW0KPj4KPj4KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdA==

