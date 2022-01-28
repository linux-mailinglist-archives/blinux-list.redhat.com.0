Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A307A49FC30
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 15:54:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643381655;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=udvR9q6kRKEVzKFsGB1D/A0ZLWnYFnruikuoizyJ5tQ=;
	b=G3wvtreBrk684rjR461/QMq7Pbx6rW7qY6f0KeiFpveydeBtSli5jT1H3YKdx8L4BFZvt4
	L7Qh+jCXRoiv8G4yMpkt12bVmSdmD7xgTYyOXgh12ecKKdUmecimImnIYbtC7sTj/QOAd7
	BcIYj6cmF9t3ac+Ww0RqsXhwv8osbZw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-261-Yg2sOgPQP8Gu8dI2fQtkXw-1; Fri, 28 Jan 2022 09:54:12 -0500
X-MC-Unique: Yg2sOgPQP8Gu8dI2fQtkXw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1ABD984DA45;
	Fri, 28 Jan 2022 14:54:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 44B5E70D33;
	Fri, 28 Jan 2022 14:54:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8F70D4BB7B;
	Fri, 28 Jan 2022 14:53:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20SErfFh020730 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 28 Jan 2022 09:53:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 08C3C778A; Fri, 28 Jan 2022 14:53:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0467176E9
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 14:53:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DBBAC3C13DC2
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 14:53:37 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-55-g8EOteq5MrKJYFagj4LkZQ-1; Fri, 28 Jan 2022 09:52:57 -0500
X-MC-Unique: g8EOteq5MrKJYFagj4LkZQ-1
Received: by mail-oi1-f174.google.com with SMTP id s185so12741099oie.3
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 06:52:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=x4ZjHnJ0CiRL0qjd2EN6qdbbGgbB58csYdINWaMJ79M=;
	b=vTYo+B6qCsEQRsySEpGcHfYFlu93ELJt+iM9rZ2TyivuIsmX/YfuqfoKJEAJHnVetC
	C1ftid6HCajq1vS3jP0d4HjjV4AVRoJHOovPgjqKxXqRQJYC9GBlB7awKY0efVoIP+Tu
	FSlBG0Ut+qdlcxC/27PbahMPCHaWxqe7g0Ujmn/YK4gP/KjukwSq3TPESr0Ah30Z1wLG
	W2FuEOnQ0BIziBIZcmiLaWZ8XGfF9lzZNuhvVWgsA0npBHcHjqmiZYUL3eE/I34TG7NW
	RZp2e9VWiR2G0uZyyGFXNMKp7Pcg2Yla5+ULzO++PPFxCw7V8SZ958rcLUUf2oUVekf+
	9MFg==
X-Gm-Message-State: AOAM530iGsvz/27TcJOjAlkYC1/RLMx/GCtgruGWFoL1rZqROg5c95YW
	fK9srHJVvfdaAqANE7pi7DKnI1CGYVh9UQ==
X-Google-Smtp-Source: ABdhPJwxdcd/PrEl/HaOrkRlvxt+ric05yCQScYdnq2YJ3mBR3qZwOzveTBFO+kaemUFAdyeGwc34w==
X-Received: by 2002:a05:6808:1a12:: with SMTP id
	bk18mr100502oib.3.1643381576911; 
	Fri, 28 Jan 2022 06:52:56 -0800 (PST)
Received: from smtpclient.apple ([47.186.162.207])
	by smtp.gmail.com with ESMTPSA id
	q188sm9435404oig.15.2022.01.28.06.52.56 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 28 Jan 2022 06:52:56 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: Why do you use Linux? expanded from Converting text to mp3
Date: Fri, 28 Jan 2022 08:52:54 -0600
Message-Id: <73809936-A6D6-4590-A4CA-49F562167A8B@gmail.com>
References: <CAO2sX323VuKngdShose_k6H_y6eR_Mu67jKu5y15cB4KpmvDtg@mail.gmail.com>
In-Reply-To: <CAO2sX323VuKngdShose_k6H_y6eR_Mu67jKu5y15cB4KpmvDtg@mail.gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20SErfFh020730
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlICJvcmNhIC0tcmVwbGFjZSIgY29tbWFuZCB3YXMgd2hhdCBJIHdhcyBtaXNzaW5nLiBJIGhh
ZCBiZWVuIHJlc3RhcnRpbmcgb3JjYSBpbiBvdGhlciB3YXlzLiBJIG5vdyBoYXZlIGFsbCB0aGUg
c3BlZWQgSSBjYW4gaGFuZGxlLiBUaGFua3MhCgpTZW50IGZyb20gbXkgaVBob25lCgo+IE9uIEph
biAyNywgMjAyMiwgYXQgMTE6MDUgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Np
b24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IO+7v0kndmUgbmV2ZXIgaGFk
IGlzc3VlIHdpdGggdGhlIGRlZmF1bHQgc3BlZWNoIHJhdGUgaW4gT3JjYSBhbmQgZm9yIHNvbWUK
PiByZWFzb24sIE9yY2ErU3BhY2ViYXIgcmVmdXNlcyB0byBicmluZyB1cCBPcmNhJ3Mgc2V0dGlu
Z3Mgb24gbXkKPiBzeXN0ZW0sIHNvIEkgY2FuJ3QgY2hlY2ssIGJ1dCB0d28gdGhpbmdzIHRoYXQg
Y29tZSB0byBtaW5kOgo+IAo+IDEuIGFyZSB5b3Ugc3VyZSAxMDAlIGlzIHRoZSBtYXhpbXVtIGZv
ciB3aGF0ZXZlciBzZXR0aW5nIHlvdSBjaGFuZ2VkCj4gaW4gT3JjYSdzIHNldHRpbmdzPyBCZWNh
dXNlLCBpbiB0aGUgY29udGV4dCBvZiBzcGVlY2ggcmF0ZSwgaXQgd291bGQKPiBiZSBsb2dpY2Fs
IGZvciAxMDAlIHRvIGJlIHRoZSBkZWZhdWx0LCBub3QgdGhlIG1heGltdW0gYW5kIHRoYXQgeW91
Cj4gc2hvdWxkIGJlIGFibGUgdG8gY3JhbmsgaXQgdXAgdG8gbW9yZSB0aGFuIDEwMCUgb2YgdGhl
IGRlZmF1bHQgcmF0ZS4KPiAKPiAyLiBEaWQgeW91IHJlc3RhcnQgT3JjYSwgeW91ciB4c2Vzc2lv
biwgb3IgeW91ciBjb21wdXRlciBhZnRlcgo+IGNoYW5naW5nIHRoZSBjb25maWcgZmlsZXM/IFBy
b2dyYW1zIG9mdGVuIG9ubHkgcmVhZCByZWxldmFudCBjb25maWcKPiBmaWxlcyB3aGVuIGxhdW5j
aGVkLCBzbyBlZGl0aW5nIGNvbmZpZyBmaWxlcyBkaXJlY3RseSBpbnN0ZWFkIG9mIHVzaW5nCj4g
dGhlIHByb2dyYW0ncyBpbnRlcm5hbCBzZXR0aW5ncyBzY3JlZW4gb2Z0ZW4gb25seSB0YWtlcyBl
ZmZlY3QgYWZ0ZXIKPiByZXN0YXJ0aW5nIHRoZSBwcm9ncmFtIGluIHF1ZXN0aW9uLCB0aG91Z2gg
aXQgY2FuIHNvbWV0aW1lcyB0YWtlIGEKPiByZWJvb3QgdG8gZ2V0IHRoZSBhbHRlcmVkIGNvbmZp
ZyB1cCBhbmQgcnVubmluZy4gSWYgSSdtIG5vdCBtaXN0YWtlbiwKPiBicmluZ2luZyB1cCBhIHJ1
biBkaWFsb2coYWx0K0YyIG9uIG1vc3QgZ3JhcGhpY2FsIHNldHVwcykgYW5kCj4gZXhlY3V0aW5n
Cj4gCj4gb3JjYSAtLXJlcGxhY2UKPiAKPiB3aWxsIHJlc3RhcnQgT3JjYSwgdGhvdWdoIEknbSBu
b3Qgc3VyZSBpZiByZXN0YXJ0aW5nIE9yY2Egd2lsbCBiZQo+IGVub3VnaCBmb3IgYW4gYWx0ZXJl
ZCBlc3BlYWstbmcgY29uZmlndXJhdGlvbiB0byB0YWtlIGVmZmVjdC4KPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

