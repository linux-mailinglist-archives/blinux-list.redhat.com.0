Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5551F44E08E
	for <lists+blinux-list@lfdr.de>; Fri, 12 Nov 2021 03:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636685486;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=nyXmQ+S3CFKpLHDXum/ZXNtgsTI0gvBK5QQ+JfRBIyQ=;
	b=D45nYq5hWs2lZE6d3o3mW2NqhQnAxkSyVqHHnV6oOPlT2pQm8al3Uxqyn5rwhPoQUREqbY
	T4t/fu9aSE0onDSwbybEoYuARNcR4LTzFldhkrnZ2T7nCuJLccjeVyl+qClVs1SsglGnK3
	TbPdZZ44eV6d2oR78p6Xe7N/Pygy4gg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-510-DRbAuZuxMzeF_6P55D2vRw-1; Thu, 11 Nov 2021 21:51:22 -0500
X-MC-Unique: DRbAuZuxMzeF_6P55D2vRw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F4E2871803;
	Fri, 12 Nov 2021 02:51:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 71EC85C1B4;
	Fri, 12 Nov 2021 02:51:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 98A1A1809C81;
	Fri, 12 Nov 2021 02:51:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AC2p3Bl010249 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 11 Nov 2021 21:51:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id C0C89404727C; Fri, 12 Nov 2021 02:51:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BC7FE4047279
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 02:51:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A338A811E78
	for <blinux-list@redhat.com>; Fri, 12 Nov 2021 02:51:03 +0000 (UTC)
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
	[209.85.219.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-30-Qnuas-zbNHi7zHVHXOLWyQ-1; Thu, 11 Nov 2021 21:51:02 -0500
X-MC-Unique: Qnuas-zbNHi7zHVHXOLWyQ-1
Received: by mail-qv1-f46.google.com with SMTP id gu12so5369611qvb.6
	for <blinux-list@redhat.com>; Thu, 11 Nov 2021 18:51:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=nunUVeEGEhag36vPcpS8580/zDfoDke1BJ1bCYn1x7Q=;
	b=LKa8fEst+KtcLh2cx5Ps0LxPW0DvXiVF44r5xQauAE4q+9M3QtMY/T/scMrUOeaAIn
	vzja4ASdDBFE3WijuB3hVXpcL0PUGD7q7DjGtajfBRYYqQG9DIyv9u9A5yMLAiu8ieuM
	luIokU9VbehLphT6MMrPNMRNnvuugv//8Y86vDlZRLnKjnBw3tsHEOsvPY6634g60ACv
	rEldZESKMg67mveywqBiGM2QIEdlrRQA/Jkv1kRVbaHhNnKih5pS1mshPoheGXY2fowW
	N9yXlGdnA9i1HM46K5/fjEvuY5A7ssCw5BbNGQ3YBaaXGVexp1Pu/Xc8qo8roXiDuU20
	QZ4w==
X-Gm-Message-State: AOAM532J45BzjYa5vhMsqRTgyWzNFzbebe2f2irfzygK8G3sDGIaVYop
	7gv8Up2dZ5v3+rQDsl1TkRKYk1gHOI3P3w==
X-Google-Smtp-Source: ABdhPJw6bElVeNLx31RmJCtRoycQybJshhNq2JWqJdYg0itlLpHmKPdzic/nxDnbAvr8OhW31r+4hw==
X-Received: by 2002:ad4:5c67:: with SMTP id i7mr11553547qvh.37.1636685461421; 
	Thu, 11 Nov 2021 18:51:01 -0800 (PST)
Received: from ?IPV6:2601:192:4c80:1420::4f20? ([2601:192:4c80:1420::4f20])
	by smtp.gmail.com with ESMTPSA id w9sm2228471qko.19.2021.11.11.18.51.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 11 Nov 2021 18:51:00 -0800 (PST)
Message-ID: <6c63560f-ca92-f096-5252-9813d408f584@gmail.com>
Date: Thu, 11 Nov 2021 21:50:59 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.0
Subject: Re: How do you format a disk using slint?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c8bb974c-f712-d963-1ecb-21d4b398d110@gmail.com>
	<45dfbbc5-04c2-9f49-a595-581537acbafe@gmail.com>
	<8ce70d89-dc7d-f8e9-6b8a-44d48d4ace4c@gmail.com>
In-Reply-To: <8ce70d89-dc7d-f8e9-6b8a-44d48d4ace4c@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhlIHV0aWxpdHkgaXMgY2FsbGVkIGdub21lLWRpc2tzLsKgIFlvdSBjYW4gdHlwZSB0aGF0IGlu
dG8gdGhlIHJ1biAKZGlhbG9ndWUuwqAgRXZlbiBiZXR0ZXIsIHlvdSBjYW4gYWRkIGl0IHRvIHRo
ZSBtZW51cyBieSBzdGFydGluZ8KgIG1vem8gCmZyb20gdGhlIHJ1biBkaWFsb2d1ZS7CoCBTdXBw
b3NlIHlvdSB3YW50IHRvIHB1dCBpdCBvbiB0aGUgJ2FjY2Vzc29yaWVzJyAKbWVudS4gWW91IGNv
dWxkIG5hdmlnYXRlIHRvICdhY2Nlc3NvcmllcycsIGFuZCBtYWtlIGEgbmV3IGl0ZW0uwqAgVGhl
IApjb21tYW5kIHdvdWxkIGJlICJnbm9tZS1kaXNrcyIsIGFuZCB0aGUgc2hvcnRjdXQgd291bGQg
YmUgd2hhdGV2ZXIgeW91IAp3YW50LgoKCgpPbiAxMS8xMS8yMSAyMTozNCwgTGludXggZm9yIGJs
aW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBUaGFua3MgRGF2ZS4KPgo+IE5vdywgaWYg
SSBpc3N1ZSB0aGlzIGNvbW1hbmQKPgo+IHNsYXB0LXNyYyBnbm9tZS1kaXNrLXV0aWxpdHkKPgo+
IGFzIHJvb3QsIHdvdWxkIHRoZSBzeXN0ZW0gYWRkIGEgbmV3IHV0aWxpdHkgdG8gdGhlIG1lbnU/
IE9yIGRvIEkgaGF2ZSAKPiB0byBhZGQgaXQgbXlzZWxmP8KgIElmIHNvLCB3aGVyZSBjYW4gSSBm
aW5kIHRoaXMgdXRpbGl0eSBvbmNlIEl0IAo+IGJlY29tZXMgYXZhaWxhYmxlPwo+Cj4KPiBDaGVl
cnMsCj4KPiBJYnJhaGltCj4KPiBPbiAxMS8xMS8yMSA5OjA4IFBNLCBMaW51eCBmb3IgYmxpbmQg
Z2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBzbGFwdC1zcmMgZ25vbWUtZGlzay11dGlsaXR5
IAo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFp
bGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

