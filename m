Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BD64797A6
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 00:50:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639785006;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VYNMd0YKwmSll1G74yrsWHMaOwZh9vmitddEzDC+ioE=;
	b=gaGy67p8AbBfZHwgyzSrHa6W7jcpSyQOAmJYyIWh3Yu/pPxg0fo2N30iv0VuW4f+2+i+6q
	S5prdx6X4nUVdTvcoBv7tam0iGW6f010hyDSth8+TkJJsrYVHNKMe6zzI76kqpWgs1ZdNM
	prcUEdxoLY15b4sBp8/l1nn2YCdWOOo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-145-GJa61GNQMwCI-eWGHmnfnw-1; Fri, 17 Dec 2021 18:50:02 -0500
X-MC-Unique: GJa61GNQMwCI-eWGHmnfnw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DF14E81CCB6;
	Fri, 17 Dec 2021 23:49:57 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A43EAE14A;
	Fri, 17 Dec 2021 23:49:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C6EBA18095C9;
	Fri, 17 Dec 2021 23:49:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BHNmbCh006292 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 17 Dec 2021 18:48:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6F00C492D59; Fri, 17 Dec 2021 23:48:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6AA49492D58
	for <blinux-list@redhat.com>; Fri, 17 Dec 2021 23:48:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32F1A3804090
	for <blinux-list@redhat.com>; Fri, 17 Dec 2021 23:48:37 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-2-g7c_YPg1MnCBgvrV9x2Z9Q-1;
	Fri, 17 Dec 2021 18:48:35 -0500
X-MC-Unique: g7c_YPg1MnCBgvrV9x2Z9Q-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 3E3FEA396B
	for <blinux-list@redhat.com>; Fri, 17 Dec 2021 23:48:29 +0100 (CET)
Message-ID: <522e1729-0d1b-5c40-c783-894535a5ac54@slint.fr>
Date: Sat, 18 Dec 2021 00:48:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: How can I add Arabic as a recognition language to Lios?
To: blinux-list@redhat.com
References: <e9be3d82-77fd-8c95-450b-c763b7f1cdd4@gmail.com>
In-Reply-To: <e9be3d82-77fd-8c95-450b-c763b7f1cdd4@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BHNmbCh006292
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
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSWJyYWhpbSwKCllvdSBkbyBub3QgbmVlZCB0byBhZGQgYW55dGhpbmcgc3BlY2lhbCwgdGhl
IGZpbGVzCi91c3Ivc2hhcmUvdGVzc2RhdGEvQXJhYmljLnRyYWluZWRkYXRhIGJlaW5nIGluY2x1
ZGVkIGluIHRoZSBwYWNrYWdlCnRlc3NlcmFjdC1kYXRhIGluIFNsaW50LgoKSnV0cyBvcGVuIGxp
b3MsIHRoZW4gaW4gbWVudSBzZWxlY3QgUHJlZmVyZW5jZXMgdGhlbiBQcmVmZXJlbmNlcyByZWNv
Z25pdGlvbiBhbmQKc2VsZWN0OgpFbmdpbmU6IFRlc3NlcmFjdApMYW5ndWFnZTogQXJhYmljCgpJ
IGRvbid0IGhhdmUgYSBzY2FubmVyIGF0IGhhbmQgYnV0IGRvd25sb2FkZWQgdGhpcyBmaWxlOgpo
dHRwczovL2ZhZGEuYmlyemVpdC5lZHUvYml0c3RyZWFtLzIwLjUwMC4xMTg4OS82OTEwLzEvbWto
YWxkaSUyMFNhaGFyJTIwUmVzZWFyY2gucGRmCnRoZW4gSSBvcGVuZWQgaXQgaW4gTGlvcyAobWVu
dSBGaWxlIHRoZW4gT3BlbikuCgpUaGUgZmlsZSB3YXMgcmVjb2duaXplZCBhbmQgdGhlIHRleHQg
cHJvcGVybHkgZXh0cmFjdGVkLgoKQ29weWluZyBhIHBhcmFncmFwaCBvZiB0aGUgZXh0cmFjdGVk
IHRleHQgYW5kIHBhc3RpbmcgaXQgaW4gdHJhbnNsYXRlLmdvb2dsZS5mcgphbGxvd2VkIG1lIHRv
IHJlYWQgaXQgaW4gRnJlbmNoIDxzbWlsZT4KCkNoZWVycywKCkRpZGllcgoKTGUgMTgvMTIvMjAy
MSDDoCAwMDoxMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdMKg
Ogo+IEhpIEFsbCwKPiAKPiBUaGlzIHF1ZXN0aW9uIGlzIHByaW1hcmlseSB0byBEaWRpZXI6Cj4g
Cj4gSG93IGNhbiBJIGFkZCBBcmFiaWMgZGljdGlvbmFyeSB0byBMaW9zIHNvIHRoYXQgSSBjYW4g
dXNlIG15IHNjYW5uZXIgdG8gc2Nhbgo+IEFyYWJpYyB0ZXh0PyBJIGFzc3VtZSBJIHdpbGwgYWxz
byBiZSBhYmxlIHRvIHJ1biBBcmFiaWMucGRmIGZpbGVzIHRocm91Z2ggTGlvcwo+IGFuZCBhcyBz
dWNoIEkgd2lsbCBoYXZlIGFjY2VzcyB0byBhIGxvdCBvZiBBcmFiaWMgYm9va3MgYXZhaWxhYmxl
IG9uIHRoZSBuZXQuCj4gCj4gQ2hlZXJzLAo+IAo+IElicmFoaW0KCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0

