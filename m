Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 603FA457955
	for <lists+blinux-list@lfdr.de>; Sat, 20 Nov 2021 00:10:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637363439;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tNr2yuQwIjrcTfOpKb7EZJtAM7r6T8MfVyde9IFz2eU=;
	b=IeWKNq89ZG7dOBJeoxSUKFYo6CrOZpa1LGDxCyjKG9mKbFZYsZDU3tcbxLWQ1TTB3dH19O
	TG8SoLuga7b4i9PhfltnHH5rG5JvIyKwR7of+16b1kBNkxLD7sUGaNyP3fizAoh8IJ32GF
	oqAUdzGoLHkcH8fXHXrAzLQxB5mAro4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-125-sTxNEEntNDa-D6ibnRqLjA-1; Fri, 19 Nov 2021 18:10:35 -0500
X-MC-Unique: sTxNEEntNDa-D6ibnRqLjA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C6A39801B0F;
	Fri, 19 Nov 2021 23:10:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 19E3C100EA05;
	Fri, 19 Nov 2021 23:10:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 825D11832E81;
	Fri, 19 Nov 2021 23:10:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJN5978026418 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 18:05:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BBD8440CFD15; Fri, 19 Nov 2021 23:05:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B666640CFD14
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:05:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C357811E7A
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 23:05:09 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-587-9nUi2l_nNd2xBnG67co82Q-1;
	Fri, 19 Nov 2021 18:05:07 -0500
X-MC-Unique: 9nUi2l_nNd2xBnG67co82Q-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id B672AA41FD
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:04:27 +0100 (CET)
Message-ID: <4d0aaf05-9983-fc2f-20a2-633b7bd58928@slint.fr>
Date: Sat, 20 Nov 2021 01:05:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: looking for Lennix distribution?
To: blinux-list@redhat.com
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
	<c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
	<9969beee-025b-3a64-dbd6-ab203bf6e060@gmail.com>
	<7c611c4e-d855-047f-3784-04382c6613d5@gmail.com>
	<fc822abc-4ee9-89fb-2c6e-b61477e0b8ae@gmail.com>
	<5f7fb95f-74a0-6a95-bf96-d933e513c814@gmail.com>
In-Reply-To: <5f7fb95f-74a0-6a95-bf96-d933e513c814@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1AJN5978026418
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSwKCk1heWJlIHlvdSBjYW4gbWFrZSB0aGUgbmVlZGVkIGNoYW5nZXMgZnJvbSB0
aGUgU2xpbnQgaW5zdGFsbGVyLCBpZiB0aGUgCmZpcm13YXJlIGJvb3RzIGF1dG9tYXRpY2FsbHkg
ZnJvbSBhIHBsdWdnZWQtaW4gVVNCIHN0aWNrLgoKQ2hlZXJzLApEaWRpZXIKCkxlIDE5LzExLzIw
MjEgw6AgMjM6NDUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTC
oDoKPiBJdCBhbHJlYWR5IGluc3RhbGxlZCBpdCB0byB0aGUgc3lzdGVtIGludGVybmFsIGRyaXZl
LCB1bmZvcnR1bmF0ZWx5LiBUaGUgCj4gcXVlc3Rpb24gaXMgaG93IHRvIGdldCByZWQgb2YgaXQu
IEkgd2lsbCBoYXZlIHRvIGdldCBvbmUgb2YgbXkgc2lnaHRlZCAKPiBmcmllbmRzIHRvIHJlc2V0
IG15IGJvb3QgdXAgb3B0aW9ucyB0byBkZWZhdWx0Lgo+IAo+IENoZWVycywKPiAKPiBJYnJhaGlt
Cj4gCj4gT24gMTEvMTkvMjAyMSA0OjUzIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIHdyb3RlOgo+PiBUaGUgYm9vdGxvYWRlciBjaGVja2JveCBpcyBpbiB0aGUgZGlzayBj
b25maWd1cmF0aW9uLiBJJ2xsIGhhdmUgdG8gCj4+IGxvb2sgYXQgaXQgYWdhaW4gdG8gYmUgc3Vy
ZSwgYnV0IGlmIEkgcmVtZW1iZXIgY29ycmVjdGx5LCBpdCdzIGluIHRoZSAKPj4gd2luZG93IHRo
YXQgcG9wcyB1cCB3aGVuIHlvdSBzZWxlY3QgdGhlIGRpc2sgd2hlcmUgeW91J3JlIGluc3RhbGxp
bmcgCj4+IHRoZSBPUy4gQWN0dWFsbHksIEkgdGhpbmsgaXQncyBhIGJ1dHRvbiBvciBzb21lIHN1
Y2ggdGhhdCBzYXlzICJkbyBub3QgCj4+IGluc3RhbGwgYm9vdGxvYWRlciwiIGJ1dCBhZ2Fpbiwg
SSdsbCBoYXZlIHRvIGxvb2sgYXQgaXQgYWdhaW4uIEkgZG8gCj4+IGtub3cgdGhlcmUgaXMgYSB3
YXkgdG8ga2VlcCBpdCBmcm9tIGluc3RhbGxpbmcgdGhlIGJvb3Rsb2FkZXIsIGFzIHdlbGwgCj4+
IGFzIGEgd2F5IHRvIGluc3RhbGwgdG8gYSBkaWZmZXJlbnQgZGlzay4gQnkgZGVmYXVsdCwgaXQg
aW5zdGFsbHMgdG8gCj4+IHRoZSBzeXN0ZW0gaW50ZXJuYWwgZHJpdmUsIHdoaWNoIHlvdSBkbyBu
b3Qgd2FudC4KPj4gfkt5bGUKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pgo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVk
aGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

