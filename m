Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8FB7B9B34
	for <lists+blinux-list@lfdr.de>; Thu,  5 Oct 2023 09:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696489393;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PbXXsRboXM9pV/ws+8E2hKbk+5zUXEKi+LeySZuHRFk=;
	b=cIxbJGSDje60lo5vwuel4+DLgVkUle1WH7i5qfuRJbW3YExYqFYoNh61420XY8xCDI1QOw
	pKPtcgjtXD8+JhHIYsHR6aOtHJ7FK4awSUWTZ++6wJXz6f+PrZ4bd45sPpsCfn1VVzdOIO
	i1QJFCValdqdbgdMQRjYxqd8kVdTpaw=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-517-qpXtjTIWNP6wO6ee_RaUOQ-1; Thu, 05 Oct 2023 03:03:10 -0400
X-MC-Unique: qpXtjTIWNP6wO6ee_RaUOQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B05B61C2B685;
	Thu,  5 Oct 2023 07:03:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 96A6F440E3;
	Thu,  5 Oct 2023 07:03:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 02CC219465B1;
	Thu,  5 Oct 2023 07:03:08 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: RE: Intro.
Date: Thu, 5 Oct 2023 08:02:56 +0100
Importance: normal
In-Reply-To: <mailman.784.1696420428.2981444.blinux-list@redhat.com>
References: <mailman.776.1696418321.2981445.blinux-list@redhat.com>
 <mailman.784.1696420428.2981444.blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.1346.1696489387.2981448.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sIEkgY2FuIHRlbGwgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBsaWdodCBhbmQgZGFyay4g
SSBoYXZlIHVzZWQgYWxsIHdpbmRvd3MgT1Mgc3lzdGVtcyBmcm9tIHdheSBiYWNrIHdpbmRvd3M3
LCBCaWxseQoKU2VudCBmcm9tIE1haWwgZm9yIFdpbmRvd3MKCkZyb206IExpbnV4IGZvciBibGlu
ZCBnZW5lcmFsIGRpc2N1c3Npb24KU2VudDogMDQgT2N0b2JlciAyMDIzIDEyOjUzClRvOiBMaW51
eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uClN1YmplY3Q6IFJlOiBJbnRyby4KCkEgY291
cGxlIHF1ZXN0aW9ucy4KSW4geW91ciBjYXNlIGlzIGJsaW5kIGRlZmluZWQgYXMgbm8gdXNlYWJs
ZSB2aXNpb24gaW5jbHVkaW5nIG5vIGFiaWxpdHkgdG8Kc2VlIGxpZ2h0PwpXaGF0IG9wZXJhdGlu
ZyBzeXN0ZW0gb3Igb3BlcmF0aW5nIHN5c3RlbXMgZGlkIHlvdSB1c2UgYmVmb3JlIExpbnV4PwpB
bnN3ZXJzIHRvIHRoZXNlIHR3byBxdWVzdGlvbnMgb3VnaHQgdG8gaGVscCB0aGUgbGlzdCBnZXQg
eW91IGJldHRlcgpndWlkZWFuY2UuCgoKLS0gSnVkZSA8amRhc2hpZWwgYXQgcGFuaXggZG90IGNv
bT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQgaW4KZGVmZW5zZSBvZiBsaWJlcnR5
OiBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1vLiBQbGVhc2UgdXNlIGluIHRoYXQKb3JkZXIu
IiBFZCBIb3dkZXJzaGVsdCAxOTQwLgoKT24gV2VkLCA0IE9jdCAyMDIzLCBMaW51eCBmb3IgYmxp
bmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgoKPiBIaSBndXlzLCBzbyBnbGFkIHRvIGJlIGpv
aW5pbmcgdGhpcyBncm91cC4gSSBrbm93IG5vdGhpbmcgYWJvdXQgTGludXggcGxhdGZvcm0gYnV0
IHdvdWxkIGxpa2UgdG8gdHJ5IExpbnV4IGZvciBteXNlbGYuIFRoZSBwcm9ibGVtIGlzIEkgd291
bGRu4oCZdCBrbm93IHdoaWNoIHZlcnNpb24gdG8gdHJ5IG91dCBmaXJzdCBhbmQgdGhhdCBpcyBv
bmUgcmVhc29uIGZvciBqb2luaW5nIHRoaXMgZ3JvdXAuIEkgYW0gYSBibGluZCBwZW5zaW9uZXIg
bGl2aW5nIGluIFNjb3RsYW5kIFVLLiBJRiB5b3UgY291bGQgcHJvdmlkZSBtZSB3aXRoIGhlbHAv
YWR2aWNlIG9uIHdoaWNoIHZlcnNpb24gb2YgTGludXggd291bGQgYmUgYmVzdCBmb3IgbWUgSSB3
b3VsZCBhcHByZWNpYXRlIGl0IGluZGVlZCwgQmlsbHkKPgo+IFNlbnQgZnJvbSBNYWlsIGZvciBX
aW5kb3dzCj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBo
dHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1s
aXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QK

