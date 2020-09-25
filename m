Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id E15A22792F3
	for <lists+blinux-list@lfdr.de>; Fri, 25 Sep 2020 23:06:52 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601068011;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vZjcvCyDmFp9Iy3aaCsSEUwRw0cJQd4JszSporPnzaQ=;
	b=LLZ6gbSVzKaRyBl9snLAUxR47lCv0hnfDv0wWy3rsuY1Z+3mNCM+ul9gBiQZAfJK2B9YnE
	u4qEtKOF8ox97RhVijfx6DbcWVyfyt+Bh/0o2Y1gbnz5rIpaKDjIVg53IznIN5EqgfZmZD
	DFGJLgpSdqV5KimdzqiaDvr5nA9nChc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-204-xfPnE6BjNIK7N3frL3yuKA-1; Fri, 25 Sep 2020 17:06:49 -0400
X-MC-Unique: xfPnE6BjNIK7N3frL3yuKA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4620056B36;
	Fri, 25 Sep 2020 21:06:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 215335D9DC;
	Fri, 25 Sep 2020 21:06:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 82CCD1826D30;
	Fri, 25 Sep 2020 21:06:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08PL6bDE028967 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 25 Sep 2020 17:06:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E4D2C2068533; Fri, 25 Sep 2020 21:06:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF5272166B27
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 21:06:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A2CD4185A78B
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 21:06:33 +0000 (UTC)
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-6-bIQu2zAiMp-JXbtm7RQ0Ag-1; Fri, 25 Sep 2020 17:06:31 -0400
X-MC-Unique: bIQu2zAiMp-JXbtm7RQ0Ag-1
Received: by mail-qk1-f171.google.com with SMTP id q63so4308575qkf.3
	for <blinux-list@redhat.com>; Fri, 25 Sep 2020 14:06:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=veT3kaeZo8sIk1/HJyEOS/HgrHSjjCJQH52I6x8gisc=;
	b=Ov3WaORhF7/5FVEJrHbN0f+xk5KJEYgwc724TuqlD5nYsLzsJdevMBjSC+OkLworBT
	zorgv3JobYN/+0xWP8cb4F/H9OMjiy8FcfzsLKHQiVTYqhyV/v0tCNgb1IrZ6uFqq+TD
	KPEQr/c+Ts/KuTwh3MOmKj/SKZJSDcigPyiAJpRacuGF67MGa3saNfxOQWqzUgR0adnA
	EmkZzOZbA/SAjsoryHCGRORtu0m7Tx7k9bJemukBaC1IF41dsYWtUW8cnOdIYE8zdu/Q
	1PZcYkec/9+s28tAg44z73U2abJoR8MnvDapMeE41RlTnSjVhTgpgEsvOAyLUZAHMC3f
	OkVA==
X-Gm-Message-State: AOAM530am5XCog1jEw8sFvMCYYQDTaKfy9bpwf01canfAhyMEDkfyCx3
	HQU1Mjy5WdC6CFuGz4sbhnaC+1Oc98Z12TTYmel1TlRW9o/sog==
X-Google-Smtp-Source: ABdhPJxlK5EEFG0IRRnXjicg7Fbr+fxnbIedpzqRdu2CoaRzIlN4lY6lS8d+7qIiySKOFkDi1f3LQyi7YkZBVh/ejS4=
X-Received: by 2002:a37:cc2:: with SMTP id 185mr1847642qkm.484.1601067989969; 
	Fri, 25 Sep 2020 14:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.NEB.2.23.451.2009250454490.7003@panix1.panix.com>
	<0b3401d69353$43db9140$7001a8c0@NUCPPYH>
	<alpine.NEB.2.23.451.2009251630502.8733@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2009251630502.8733@panix1.panix.com>
Date: Fri, 25 Sep 2020 14:06:19 -0700
Message-ID: <CAJ1g4g8Ydo32J70Pz20Z6+baPxFgnbJdwNE0SJtehf1QLCsJuQ@mail.gmail.com>
Subject: Re: [orca-list] jenux status
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 08PL6bDE028967
X-loop: blinux-list@redhat.com
Cc: Glenn K0LNY <glennervin@cableone.net>, orca-list@gnome.org
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCBTZXAgMjUsIDIwMjAgYXQgMTozNiBQTSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uCjxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPgo+Cj4gT24gRnJpLCAy
NSBTZXAgMjAyMCwgR2xlbm4gSzBMTlkgd3JvdGU6Cj4KPiA+IENhbiB5b3UgcmVmcmVzaCB1cyBv
biB3aGF0IEdlbnV4IGlzPwoKIlRoaXMgaXMgYSBib290YWJsZSBEVkQgaW1hZ2UgdGhhdCBjYW4g
YmUgdXNlZCB0byBpbnN0YWxsIGVpdGhlcgphbmRyb2lkIG9yIGEgZnVsbHkgYWNjZXNzaWJsZSBB
cmNoIExpbnV4IGJhc2VkIFN5c3RlbSBjYWxsZWQgSmVudXguIEl0CnJ1bnMgb24gYW55IGludGVs
LWNvbXBhdGlibGUgKDY0LWJpdCkgY29tcHV0ZXIuICIKCjxodHRwczovL2plbm5pb3MuY29tL3By
b2plY3RzLmh0bWw+CgpCZXN0IHJlZ2FyZHMsCgpQYXVsCgotLSAKW05vdGljZSBub3QgaW5jbHVk
ZWQgaW4gdGhlIGFib3ZlIG9yaWdpbmFsIG1lc3NhZ2U6ICBUaGUgVS5TLiBOYXRpb25hbApTZWN1
cml0eSBBZ2VuY3kgbmVpdGhlciBjb25maXJtcyBub3IgZGVuaWVzIHRoYXQgaXQgaW50ZXJjZXB0
ZWQgdGhpcwptZXNzYWdlLl0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgwq9cXyjjg4QpXy/CrwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dA==

