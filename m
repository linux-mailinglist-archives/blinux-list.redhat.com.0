Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9F8FE3D2AD5
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 19:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626973836;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Q8MdcWKIn4vuMb4PMMSQfGRDYuGd1GsiPlE7DY9JHAM=;
	b=O75vAKTaZ1LHk++qrCqsR9o6lbaa1fypWrYOPVASjDSkzyZk1IvsZlpUhCsxQc+sMCFA6z
	md7ZzZg3lqFy5MnFQTIkIT3xbMSr3D4wtpnnAAyhl9WchkIo0TUAwnKxa/hQjDzBCTbLA5
	qr3QEDlD6nphzyQlFld9CNBlmqkPWN0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-Hk6xiigOPeSFgS8ii6ETqg-1; Thu, 22 Jul 2021 13:10:35 -0400
X-MC-Unique: Hk6xiigOPeSFgS8ii6ETqg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4D46E1015188;
	Thu, 22 Jul 2021 17:10:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 695639329;
	Thu, 22 Jul 2021 17:10:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BAC29180BAB2;
	Thu, 22 Jul 2021 17:10:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MHAEA2001668 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 13:10:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AF7BD10548C6; Thu, 22 Jul 2021 17:10:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA8BD1111429
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 17:10:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3C52D800FFB
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 17:10:12 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-503-uwXxNThaN92qtMwGwnOoIA-1; Thu, 22 Jul 2021 13:10:10 -0400
X-MC-Unique: uwXxNThaN92qtMwGwnOoIA-1
Received: by mail-qt1-f171.google.com with SMTP id l2so4671926qtp.11
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 10:10:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=ZoTjfRq7DSheGWPiDVrBmMa/ffKdAj6d8lyQ2kLLrZw=;
	b=PXWtZycrnyqEy5UVSmcL0falTm6rMu+NwjpHeY9hXgqSUhk8Bf+CWmYjRgE0b7VQpo
	kMj/wdR/wbHnCeviag7pJR1g6ZFwe0KGM+5qdiVGPQal/0wdxo4VbheAnxi5DBLeZH3E
	9n7OYV2O8+uafNlFqoo3QIYs4Fq43cQyjH2Drhqw+NxN33zQt1OhUIBhfqGztXpaoNqs
	okybmjoRrT+ggRkvPiesDXH+M945CepnoAgMDeOSldu4jzpw2KA7s0YC4Mn1lpolko7h
	1pdjgLQYH6L/MNVUTq/NdWfy9nYlIw5WSjQ04NoJ6bndaUM3nq+4kUeC9UgldqWbmKi/
	/Eng==
X-Gm-Message-State: AOAM531zKRx9sknlkzPnWs4zieu1CZMJcYQ7Bp9Z3yOXgyn1aA1Entth
	WLKSlhFikyxZ+37/m3tZBRYjetcd6VlzOw==
X-Google-Smtp-Source: ABdhPJyxIoRPIunmfhSdN7/+1itNt9/fnAQGx/EVNV59hVPl+Jw4RlZO95y8zSp8LIhKIN699Lz7hQ==
X-Received: by 2002:ac8:4f13:: with SMTP id b19mr587571qte.185.1626973809553; 
	Thu, 22 Jul 2021 10:10:09 -0700 (PDT)
Received: from smtpclient.apple ([2601:192:4c80:1420:bdd5:ed07:e707:c9c6])
	by smtp.gmail.com with ESMTPSA id
	i7sm10693388qtr.80.2021.07.22.10.10.08 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 22 Jul 2021 10:10:08 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Thunderbird on Slint
Date: Thu, 22 Jul 2021 13:10:06 -0400
Message-Id: <15736C51-811B-426C-874B-DFB7FA182741@gmail.com>
References: <dded7ee9-4da9-3ec4-bdb3-a437226a097e@slint.fr>
In-Reply-To: <dded7ee9-4da9-3ec4-bdb3-a437226a097e@slint.fr>
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16MHAEA2001668
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWZ0ZXIgeW91IHVwZ3JhZGUgdGh1bmRlcmJpcmQsIHJlbWVtYmVyIHRvIGFkZCAiXm1vemlsbGEt
dGh1bmRlcmJpcmQiIHRvIHRoZSAiZXhjbHVkZSIgZXhwcmVzc2lvbiBpbiAvZXRjL3NsYXB0LWdl
dC9zbGFwdC1nZXRyYyIsIGJlZm9yZSB5b3VyIG5leHQgc3lzdGVtIHVwZ3JhZGUuICBPdGhlcndp
c2UsIHlvdXIgbmV3IHRodW5kZXJiaXJkIHdpbGwgYmUgcmVwbGFjZWQgd2l0aCB0aGUgb2xkIG9u
ZS4KCkhUSCwKCkRhdmUKCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEp1bCAyMiwgMjAyMSwg
YXQgMTE6MjMgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1s
aXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0hpIEFsLAo+IAo+IHF1aWNrIGFuc3dlcjog
YWZ0ZXIgZWFjaCB1cGdyYWRlLgo+IFRoaXMgaXM6ICB0aHVuZGVyYmlyZCAtUCAtLWFsbG93LWRv
d25ncmFkZSAobWluZCB0aGUgY2FwaXRhbCBQKQo+IAo+IENoZWVycywKPiBEaWRpZXIKPiAKPj4g
TGUgMjIvMDcvMjAyMSDDoCAxNjo1NywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lv
biBhIMOpY3JpdCA6Cj4+IEhpLCBEaWRpZXIuCj4+IFF1aWNrIHF1ZXN0aW9uOiAgc2luY2UgSSBp
bnN0YWxsZWQgYSB2ZXJzaW9uIG9mIFRodW5kZXJiaXJkIGFjY29yZGluZyB0byB0aGUgaW5zdHJ1
Y3Rpb25zIHlvdSBsaW5rZWQgdG8gbGFzdCB3ZWVrLCBkbyBJIHN0aWxsIG5lZWQgdG8gdXNlICIt
cCBhbGxvdy1kb3duZ3JhZGUiIHRvIGJyaW5nIGl0IHVwIGFmdGVyIGEgbmV3IGluc3RhbGw/ICAo
SSBob3BlIEkgd3JvdGUgdGhhdCByaWdodCwgYXMgSSBkaWQgaXQgZnJvbSBtZW1vcnkuKQo+PiBU
aGFua3MhCj4+IEFsCj4+PiBPbiA3LzIxLzIxIDM6NTcgQU0sIExpbnV4IGZvciBibGluZCBnZW5l
cmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+PiBIaSBCcmFuZHQsCj4+PiAKPj4+IHNob3J0IGFuc3dl
cjoKPj4+IGh0dHA6Ly9zbGFja3dhcmUudWsvc2xpbnQveDg2XzY0L3NsaW50LTE0LjIuMS90ZXN0
aW5nL1JFQURNRQo+Pj4gCj4+PiBEaXNjYXJkIHRoZSBjb21tZW50IGFib3V0IFNwZWVjaCBEaXNw
YXRjaGVyLCBhIGZhaXJseSByZWNlbnQKPj4+IG9uZSBpcyAgICAgYWxyZWFkeSBpbiBTbGludC4K
Pj4+IAo+Pj4gTW9yZToKPj4+IGh0dHBzOi8vc2xpbnQuZnIvZG9jLwo+Pj4gCj4+PiBDaGVlcnMs
Cj4+PiBEaWRpZXIKPj4+IC0tIAo+Pj4gRGlkaWVyIFNwYWllcgo+Pj4gCj4+PiBMZSAyMS8wNy8y
MDIxIMOgIDA4OjUzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0
IDoKPj4+PiBIaSBhbGwsCj4+Pj4gCj4+Pj4gCj4+Pj4gSSBqdXN0IGNoZWNrZWQgdGhlIHZlcnNp
b24gb2YgVGh1bmRlcmJpcmQgaW4gc2xpbnQsIGFuZCBJIHNhdyBpdCBpcyBhYm91dCAxMCB2ZXJz
aW9ucyBvdXQgb2YgZGF0ZS4gSXMgdGhlcmUgYSB3YXkgdG8gZ2V0IGEgbmV3ZXIgdmVyc2lvbiBv
ZiB0aGUgc29mdHdhcmU/IEkga25vdywgSSBjYW4gcHJvYmFibHkgZ2V0IGl0IGZyb20gZ2l0aHVi
LCBidXQgSSBtdXN0IGFkbWl0LCBpdCBpcyBub3QgbXkgZmF2b3JpdGUgd2F5IG9mIGluc3RhbGxp
bmcgc29mdHdhcmUuCj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8v
bGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

