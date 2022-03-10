Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 740C44D4464
	for <lists+blinux-list@lfdr.de>; Thu, 10 Mar 2022 11:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646907598;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=loT79jZFgA3tCyNz21DbinZFXNLyZlH5uIddfy1ZlC0=;
	b=GMC+cS9SC0uJS9Xb5XwnnjyC2EgUubjsv6wUv2+jm3XhjMXz+eBipYe8eQ7QE7cDd8TzuX
	B//i/EAeCpYlwxMNgx56owJjJPeqq67NWvlk7KgDDQvPTOu0wIUAzBJPAYPwVMBfjKTAuN
	g8Dlh6HDM7NxAAD9mhXWSklCiGDCTxQ=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-439-jkzLMnPpMH2txYZpmI6QZA-1; Thu, 10 Mar 2022 05:19:55 -0500
X-MC-Unique: jkzLMnPpMH2txYZpmI6QZA-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A8A92299E744;
	Thu, 10 Mar 2022 10:19:48 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id B00DB463EB3;
	Thu, 10 Mar 2022 10:19:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E613F195357D;
	Thu, 10 Mar 2022 10:19:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Thu, 10 Mar 2022 11:19:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: Starting lightdm in text mode
To: blinux-list@redhat.com
References: <mailman.343.1646741549.111209.blinux-list@redhat.com>
In-Reply-To: <mailman.343.1646741549.111209.blinux-list@redhat.com>
Message-ID: <mailman.1241.1646907576.111208.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSm9obiwKCkkgZmFpbCB0byBzZWUgaG93IG5vdCBoYXZpbmcgbGlnaHRkbSBpbnN0YWxsZWQg
Y2FuZSBwcmV2ZW50IHlvdSB0byBzdGFydCBNYXRlLgoKSGVyZSAoU2xpbnQsIG5vdCBEZWJpYW4p
LCBhZnRlciBoYXZpbmcgc2VsZWN0ZWQgTWF0ZSBhcyBkZXNrdG9wIHdpdGggdGhlCnNlc3Npb24t
Y2hvb3NlciBjb21tYW5kLCBqdXN0IHR5cGluZyBzdGFydHggc3RhcnRzIE1hdGUuCgpUaGVuIGZy
b20gTWF0ZSBqdXN0IHByZXNzaW5nIEN0cmwrQWx0K0YyIHRocm91Z2ggQ3RybCtBbHQrRjYgbWFr
ZSB5b3Ugc3dpdGNoIG9uZQpvZiB0aGUgY29uc29sZXMgKHR0eTIgdGhyb3VnaCB0dHk2KSwga2Vl
cGluZyBCcmFpbGxlIGluIGFsbCBlbnZpcm9ubWVudHMuCgpZb3UgY2FuIGFsc28gc3dpdGNoIGJh
Y2sgdG8gTWF0ZSBwcmVzc2luZyBBbHQrRjcgYW5kIGFsc28gc3dpdGNoIHRvIGZyb21hIGEKY29u
c29sZSB0byBhbm90aGVyIG9uZSAobnVtYmVyIG4pIHByZXNzaW5nIEFsdCtGbi4KCkFueXdheSB5
b3UgY291bGQgcG9zdCBpbiB0aGUgZGViaWFuLWFjY2Vzc2liaWx0eSBtYWlsaW5nIGxpc3QgdG8g
Z2V0IGhlbHAgb24KRGViaWFuIHNwZWNpZmljIGlzc3Vlcy4KCkNoZWVycywKRGlkaWVyCi0tCkRp
ZGllciBTcGFpZXIKU2xpbnQgbWFpbnRhaW5lcgoKTGUgMDgvMDMvMjAyMiDDoCAxMjozMSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhlbGxvLAo+IAo+
IEkgdXNlIERlYmlhbiBpbiBjb21tYW5kIG1vZGUuIFVudGlsIGFib3V0IGEgeWVhciBhZ28sIHdo
ZW4gSSBib290ZWQgIHVwLCBsaWdodGRtIHdvdWxkIHN0YXJ0IGluIHRleHQgbW9kZSBhbmQgYXNr
IGZvciB1c2VyIGFuZCBwYXNzd29yZC4gSXQgd291bGQgdGhlbiBzdGFydCBNYXRlIHdpdGggT3Jj
YS4gSSBjb3VsZCB1c2UgdGhlIEdVSSBieSBwcmVzc2luZyBBbHQrRjcuIFRoZW4gaXQgc3VkZGVu
bHkgc3RhcnRlZCBzZXR0aW5nIHRoZSBzY3JlZW4gdG8gbm90LXRleHQgbW9kZS4gCj4gVG8gYmUg
YWJsZSB0byB1c2UgdGhlIG1hY2hpbmUgaW4gbXkgIHByaW1hcnkgdXNlcyBJIGhhZCB0byBkaXNh
YmxlIGxpZ2h0ZG0uIFRoaXMgbWVhbnQgdGhhdCBJIGNvdWxkbid0IHVzZSBNYXRlLiBJIGp1c3Qg
c3dpdGNoZWQgdG8gV2luZG93cyBmb3IgYSBHVUkuIEhvdyBjYW4gSSBjb25maWd1cmUgbGlnaHRk
bSB0byBub3QgcHV0IHRoZSBzY3JlZW4gaW4gZ3JhcDtoaWNzIG1vZGUgYW5kIHRvIGFnYWluIGFz
ayBmb3IgdXNlcm5hbWUgYW5kIHBhc3N3b3JkIGluIHRleHQgbW9kZSB3aGVyZSBicmx0dHkgY2Fu
IGhhbmRsZSB0aGVtLiBUaGVuIHN0YXJ0IHRoZSBHVUkgaW4gdHR5Ny4KPiAKPiBUaGFua3MsCj4g
Sm9obgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo=

