Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C1728497299
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 16:32:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642951977;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=MsCnYYJPGYrbHuauNJUMAUUMWQ38Ucovodt93/mdddk=;
	b=aXPJaLC4FurnmomX+sj4nczCmZJK+phjJA6gfJ0U3QVeigIhGHUu7ZEfRkr4ov9FdB/f63
	IRv+mArTpK8OtfN1KGwu29Tw6f5spYW98Jdi225+aY1+XPKZuC31ar99YEFOodHI3uuiQG
	LFdnAFVqciGdIOr7bJXkooo6yYKmhjs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-477-uEGcNRibMSqGY82Llox2qA-1; Sun, 23 Jan 2022 10:32:56 -0500
X-MC-Unique: uEGcNRibMSqGY82Llox2qA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2BEB8835BC3;
	Sun, 23 Jan 2022 15:32:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2847C7E5C0;
	Sun, 23 Jan 2022 15:32:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 566C34BB7C;
	Sun, 23 Jan 2022 15:32:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NFWZ9p012171 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 10:32:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E793F492CA5; Sun, 23 Jan 2022 15:32:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3F41492CA4
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 15:32:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 647B685A5A8
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 15:32:34 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-561-CYsU3_guMoCPakZgkmIRdQ-1;
	Sun, 23 Jan 2022 10:32:32 -0500
X-MC-Unique: CYsU3_guMoCPakZgkmIRdQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 5799D2025B
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 15:32:26 +0100 (CET)
Message-ID: <64e01cbd-199d-cff7-020a-4e8b3ade7a19@slint.fr>
Date: Sun, 23 Jan 2022 16:32:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Configuring ratpoison
To: blinux-list@redhat.com
References: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
In-Reply-To: <47701df7-e208-a9dc-b03d-2aa6d6a74b03@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20NFWZ9p012171
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQnJhbmR0LAoKSSBmb3J3YXJkZWQgeW91ciBxdWVzdGlvbiB0byBteSBmcmllbmQgU3Rvcm0g
RHJhZ29uIG9uIElSQyBhbmQgaGVyZSBoaXMgaGlzIGFuc3dlcjoKKDE2OjI0OjIwKSBzdG9ybTog
RGlkaWVyU3BhaWVyOiBodHRwczovL2dpdC4ybWIuY29kZXMvfnN0b3JtZHJhZ29uMjk3Ni9zdHJ5
Y2huaW5lCigxNjoyNTowOSkgc3Rvcm06IFRoYXQncyBteSBzY3JpcHQgdGhhdCBjcmVhdGVzIGEg
LnJhdHBvaXNvbnJjLiBJdCdzIHdoYXQgSSB1c2UKZXZlcnkgZGF5IGZvciBteSBYIHNlc3Npb24u
CgpDaGVlcnMsCkRpZGllcgotLQpEaWRpZXIgU3BhaWVyClNsaW50IG1haW50YWluZXIKCkxlIDIz
LzAxLzIwMjIgw6AgMTQ6NDAsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDD
qWNyaXTCoDoKPiBIaSBhbGwuCj4gCj4gCj4gSSBpbnN0YWxsZWQgcmF0cG9pc29uIG9uIG15IFNs
aW50IHN5c3RlbSwgYW5kIGRvbid0IGhhdmUgZWl0aGVyIH4vLnJhdHBvaXNvbnJjCj4gb3IgL2V0
Yy9yYXRwb2lzb24uCj4gCj4gCj4gV2hlcmUgY2FuIEkgZ2V0IGEgZ29vZCByYXRwb2lzb24gY29u
ZmlnIGZpbGU/IERvZXMgb25lIG9mIHRoZSBPcmNhIHVzZXJzLCBJJ2QKPiBhc3N1bWUgdGhhdCB3
b3VsZCBiZSBtb3N0IG9mIHVzLCBoYXZlIG9uZSBvbiBnaXRodWIgb3Igc29tZXdhcmU/Cj4gCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

