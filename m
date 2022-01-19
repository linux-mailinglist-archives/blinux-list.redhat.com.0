Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C09BE493F7A
	for <lists+blinux-list@lfdr.de>; Wed, 19 Jan 2022 19:02:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642615360;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=q0GbrKqKMQ+GvgqQDPbELgPz7mP8r601Sq+sRO8xsXc=;
	b=StCPjEichPkvapWbkw4+h8dIA14YchsEvdHQKTXCE8HmK+dUZJ++sQZeOGk6y5zY8s9hU5
	pHftkNiFunGLGlOABhE+FA1Lsr7T6mbWKrbvcNigcMGkEPmtLoLqAv9AT8rLtTOkuFurTf
	LDQW7nWGx8KfKWW0I5JMyKNBuNk3RBk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-542-epjJQ9hoPjO4LkGwAu1Kcg-1; Wed, 19 Jan 2022 13:02:37 -0500
X-MC-Unique: epjJQ9hoPjO4LkGwAu1Kcg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 52354180FCDC;
	Wed, 19 Jan 2022 18:02:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3929F105C886;
	Wed, 19 Jan 2022 18:02:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B07C91809CBA;
	Wed, 19 Jan 2022 18:02:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20JI0awf016947 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Jan 2022 13:00:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A4DBE141DEDF; Wed, 19 Jan 2022 18:00:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0139141DEDD
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 18:00:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84720106408F
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 18:00:36 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-201-jFZD_TmqNSmxL6Ex_g-qEA-1;
	Wed, 19 Jan 2022 13:00:33 -0500
X-MC-Unique: jFZD_TmqNSmxL6Ex_g-qEA-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id D1A5A2451E
	for <blinux-list@redhat.com>; Wed, 19 Jan 2022 18:00:28 +0100 (CET)
Message-ID: <68475725-ba85-b23a-8e26-8693a73fac75@slint.fr>
Date: Wed, 19 Jan 2022 19:00:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Getting Ready For linux
To: blinux-list@redhat.com
References: <2bc65cc7-9d51-b4c-5be-bae5415deec2@panix.com>
	<6a6c7716-8835-8cbc-2803-e1b664b650ee@gmail.com>
	<CAO2sX30+pzDAy6K34wJvTV0AGjioK2149M3Skhj6Qfcqca24UQ@mail.gmail.com>
	<6ce8ddec-b07a-7012-0b61-4838c702c71b@slint.fr>
	<CAO2sX30mT2TyBAvR4h-5Gvi45L20d+TZ8NQ97N3Ed=0ku2J6JA@mail.gmail.com>
	<7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
In-Reply-To: <7fd76ae5-77b0-fdb1-83f4-62cf792cce90@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20JI0awf016947
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgSG93YXJkLAoKdGhlIFNsaW50IFVTQiBzdGljayBjb250YWlucyBhbGwgeW91IG5lZWQgdG8g
aW5zdGFsbCBTbGludCwgbm90IGFuIGFscmVhZHkKaW5zdGFsbGVkIHN5c3RlbS4KCkluc3RydWN0
aW9ucyBoZXJlOiAgaHR0cHM6Ly9zbGludC5mci9kb2MvSGFuZEJvb2suaHRtbCNfc2xpbnRfaW5z
dGFsbGF0aW9uCgpJIHN1Z2dlc3QgdGhhdCB5b3UgY2hvb3NlIHRoZSBBdXRvIGluc3RhbGxhdGlv
biBtb2RlLCBlYXNpZXIgZm9yIGJlZ2lubmVycy4KCkNoZWVycywKRGlkaWVyCgpMZSAxOS8wMS8y
MDIyIMOgIDE4OjI0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0
wqA6Cj4gVGhhbmtzIHRvIGFsbCB3aG8gaGF2ZSBtYWRlIHN1Z2dlc3Rpb25zLgo+IAo+IEZpcnN0
OiBJIGRvd25sb2FkZWQgdWJ1bnR1IGFuZCBmbGFzaGVkIGl0IHRvIGEgVVNCIHN0aWNrLgo+IAo+
IE5leHQ6IEkgZ290IG15IG1pbmQgY2hhbmdlZCAocHJvYmFibHkgZm9yIHRoZSBuYmV0dGVyKSwg
c28gSSBkb3dubG9hZGVkIFNsaW5rCj4gYW5kIGZsYXNoZWQgaXQgdG8gYW5vdGhlciBVU0Igc3Rp
Y2suCj4gCj4gTm93IEkgaGF2ZSB0d28gVVNCIHN0aWNrcyB0aGF0IGVhY2ggY29udGFpbiBhIHZl
cnNpb24gb2YgbGludXguIEFzc3VtaW5nIEknbQo+IGdvbm5hIGdvIHdpdGggU2xpbm50LCBkbyBJ
IG5vdyBoYXZlIGEgYm9vdGFibGUgd29ya2luZyBjb3B5IG9mIFNsaW50P8KgIE9yIGlzCj4gdGhl
cmUgbW9yZSB0byBkbyBiZWZvcmUgSSdtIGFjdHVhbGx5IHJ1bm5pbmcgbGludXg/Cj4gCj4gVGhh
bmtzIHN0aWxsIG1vcmUuCj4gCj4gSG93YXJkCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0
QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

