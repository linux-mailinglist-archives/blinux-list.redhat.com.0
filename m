Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5344492CE5
	for <lists+blinux-list@lfdr.de>; Tue, 18 Jan 2022 19:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642528863;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qoXpje5RnoNSTertWoeUI/PXAXhBOh9IGRSP0tSrWec=;
	b=KnGB8UE7IDUyxRQcTn2+Zbm4n/S4VHHmRVqTaIm8PbfxIUvo53IzbBkyG53Qda7V1IO8+L
	HRP1SmQ6OZFfLU0VE2sfgon2AJMHi3kqsZzQfwzhPbWpYqOoKVT6xvrYvwp/NklL9rcM7S
	IXSmm3ExMgIFffiU4z1O3b/uBnRj2X8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-418-HrFjYOIcMLeN_77KKXZB3A-1; Tue, 18 Jan 2022 13:00:59 -0500
X-MC-Unique: HrFjYOIcMLeN_77KKXZB3A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5C2B351082;
	Tue, 18 Jan 2022 18:00:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 03FFF7A484;
	Tue, 18 Jan 2022 18:00:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22D7C4A700;
	Tue, 18 Jan 2022 18:00:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20IHhqhe008955 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 18 Jan 2022 12:43:52 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7F11C1121314; Tue, 18 Jan 2022 17:43:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7AB961121332
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 17:43:49 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 69A53801E6E
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 17:43:49 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-86-nQB_IXOiMz62wxEw7KrxcQ-1;
	Tue, 18 Jan 2022 12:43:46 -0500
X-MC-Unique: nQB_IXOiMz62wxEw7KrxcQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7F3B2200EA
	for <blinux-list@redhat.com>; Tue, 18 Jan 2022 17:43:42 +0100 (CET)
Message-ID: <6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
Date: Tue, 18 Jan 2022 18:43:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: starting out with linux
To: blinux-list@redhat.com
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
In-Reply-To: <CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20IHhqhe008955
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TGV0J3MgcXVvdGUgdGhpcyBwYWdlIG9mIHRoZSBBcmNoIFdpa2k6Cmh0dHBzOi8vd2lraS5hcmNo
bGludXgub3JnL3RpdGxlL0xpbnV4X2NvbnNvbGUvS2V5Ym9hcmRfY29uZmlndXJhdGlvbgoKLS1x
dW90ZSBiZWxvdy0tCkEgcGVyc2lzdGVudCBrZXltYXAgY2FuIGJlIHNldCBpbiAvZXRjL3Zjb25z
b2xlLmNvbmYsIHdoaWNoIGlzIHJlYWQgYnkgc3lzdGVtZApvbiBzdGFydC11cC4gVGhlIEtFWU1B
UCB2YXJpYWJsZSBpcyB1c2VkIGZvciBzcGVjaWZ5aW5nIHRoZSBrZXltYXAuIElmIHRoZQp2YXJp
YWJsZSBpcyBlbXB0eSBvciBub3Qgc2V0LCB0aGUgdXMga2V5bWFwIGlzIHVzZWQgYXMgZGVmYXVs
dCB2YWx1ZS4gU2VlCnZjb25zb2xlLmNvbmYoNSkgZm9yIGFsbCBvcHRpb25zLiBGb3IgZXhhbXBs
ZToKCi9ldGMvdmNvbnNvbGUuY29uZgoKS0VZTUFQPXVrCi0tIHF1b3RlIGVuZGVkIGFib3ZlLS0K
CkFzIHRoaXMgaXMgYSBzeXN0ZW1kIHRoaW5nLCBub3QgYWxsIGRpc3RyaWJ1dGlvbnMgdXNlIHRo
YXQuIFNsaW50IGRvZXNuJ3QuCgpUbyBrbm93IG1vcmU6Cmh0dHBzOi8vbWFuNy5vcmcvbGludXgv
bWFuLXBhZ2VzL21hbjUvdmNvbnNvbGUuY29uZi41Lmh0bWwKCkNoZWVycywKRGlkaWVyCi0tCkRp
ZGllciBTcGFpZXIKU2xpbnQgbWFpbnRhaW5lci4KCkxlIDE4LzAxLzIwMjIgw6AgMTY6MDcsIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPiBJIGhhdmVuJ3Qg
bWVzc2VkIGFyb3VuZCBtdWNoIHdpdGgga2V5Ym9hcmQgbGF5b3V0cywgYnV0IEkgbm90aWNlZCBt
eQo+IHN5c3RlbSBkb2Vzbid0IHNlZW0gdG8gaGF2ZSBhIC9ldGMvdmNvbnNvbGUuY2ZnIGF0IGFs
bC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

