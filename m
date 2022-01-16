Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 005BE48FE9B
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 20:11:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642360308;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=U60b5qWYRJBd1yeeTKlU5dV/cLis2QWvpNOYAUQwGUU=;
	b=FSkmrWvD2zzU02o2cYpHeLShrF2H5vtiLj9I0QXjpRqkRnZwixr/hYnKAL5kwoGSWKEw5P
	SxH9NTS5Duoom1Ngn0Wj2/2uYRQ7IjgN7ZDo8uvvqwY6LsWmyk4FqQoBCk56Fk5jCMSofn
	LTXxcUbaH7Caalb3NHp7oPHrH1+h+tM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-479-Y5rSWXFhNWK_-QBrMq_Iyg-1; Sun, 16 Jan 2022 14:11:45 -0500
X-MC-Unique: Y5rSWXFhNWK_-QBrMq_Iyg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A892801B26;
	Sun, 16 Jan 2022 19:11:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6E13710013D0;
	Sun, 16 Jan 2022 19:11:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 747FA1809CB8;
	Sun, 16 Jan 2022 19:11:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GJBYVC009354 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 14:11:34 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 45354492C3B; Sun, 16 Jan 2022 19:11:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 40F52492CA5
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 19:11:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 26B81800B29
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 19:11:34 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-591-5trquRI-PLutacPrTdDpaQ-1;
	Sun, 16 Jan 2022 14:11:32 -0500
X-MC-Unique: 5trquRI-PLutacPrTdDpaQ-1
Received: from [192.168.43.177] (pop.92-184-116-83.mobile.abo.orange.fr
	[92.184.116.83])
	by darkstar.slint.fr (Postfix) with ESMTPSA id C2C222037A
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 19:11:28 +0100 (CET)
Message-ID: <f5d06d8f-4be3-6d81-e008-d098b4272750@slint.fr>
Date: Sun, 16 Jan 2022 20:11:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Getting Started with linux
To: blinux-list@redhat.com
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
	<8b1b8fcb-2513-2ac8-77db-4aa49e3c225a@gmail.com>
	<e5ad6707-835a-7827-7988-a19c05973fda@gmail.com>
	<b46cb80c-7549-f332-9baa-a42afa678a96@slint.fr>
	<8f6a2d85-911d-1cdd-2468-009f569774b0@gmail.com>
In-Reply-To: <8f6a2d85-911d-1cdd-2468-009f569774b0@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20GJBYVC009354
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

WW91IGFyZSB3ZWxjb21lIEt5bGUuCgpZb3UgY2FuIGFsc28gaW5zdGFsbCBvbiBhIFNEIGNhcmQs
IGF0dGFjaGVkIHRvIGEgY2FyZCByZWFkZXIgZml4ZWQgdG8geW91cgpjb21wdXRlciBpZiBpdCBm
aXJtd2FyZSBjYW4gYm9vdCBvbiB0aGF0IChtaW5lIGRvIG5vdCksIG9yIGluIGFuIFVTQiBlbmNs
b3N1cmUsCm9yIGV2ZW4gb24gYW4gKGJpZykgVVNCIHN0aWNrLiBKdXRzIGJlIGF3YXJlIHRoYXQg
aW4gY2FzZSBvZiBhIFVTQiBzdGljayB0aGUKcGVyZm9ybWFuY2VzIG1heSBiZSBsb3dlciBhbmQg
dGhpcyBraW5kIG9mIGRldmljZSBjYW4gd2VhciBvdXQgZmFzdCBkdSB0byB0ZWgKZnJlcXVlbnQg
d3JpdGVzLgoKT2gsIGFuZCBpZiBzb21lb25lIHdvbmRlciBJIGFtIG5vdCBibGluZC4KCkNoZWVy
cywKRGlkaWVyCgpMZSAxNi8wMS8yMDIyIMOgIDE4OjQxLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gVGhhbmtzIERpZGllciwgSSBtYXkgYWNjZXB0IHlv
dXIgY2hhbGxlbmdlLCBzaW5jZSBhcyB5b3UgaGF2ZSBzYWlkLCBJIGNhbgo+IGluc3RhbGwgU2xp
bnQgb250byBhIFVTQiBkcml2ZSBhbmQga2VlcCBpdCBzZXBhcmF0ZSBmcm9tIG15IHdvcmtpbmcg
RmVkb3JhCj4gaW5zdGFsbGF0aW9uLiBMaWtlIEhvd2FyZCwgSSBoYWQgbm8gZGVzaXJlIHRvIHB1
dCBpdCBpbnRvIGEgdmlydHVhbCBtYWNoaW5lLCBub3QKPiBldmVuIHVuZGVyIGFuIGFscmVhZHkg
cnVubmluZyBMaW51eC4KPiAKPiB+S3lsZQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

