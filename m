Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AA8F4BA4B2
	for <lists+blinux-list@lfdr.de>; Thu, 17 Feb 2022 16:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645112603;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c37taT8LVbEkTZfJABgNz+jfv0B3qnj6iklxonc5yWM=;
	b=HvhDxKVAeFDdsJwhZtYq7+n9Net2++4yhElUSRlaR16KlEsynyfQse52Ph8aJTKUQZeSPc
	1HWpRotnJbxpgG4WP6x1ZXx+/hcy0dhpRg0h2stGpKpdLngWmZyZAasu2HI6PR5ty7YLqz
	jKjtNJrriLuNcjcYQWaEFrJRbS8U304=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-362-_1bpdQmzNz281DsYqeNNUw-1; Thu, 17 Feb 2022 10:43:19 -0500
X-MC-Unique: _1bpdQmzNz281DsYqeNNUw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4E17D814243;
	Thu, 17 Feb 2022 15:43:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 015DB74E8B;
	Thu, 17 Feb 2022 15:43:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C0FA01809CAA;
	Thu, 17 Feb 2022 15:43:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21HFh7ci016467 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 17 Feb 2022 10:43:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5DEFF76E8; Thu, 17 Feb 2022 15:43:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5995576CC
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 15:43:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0EEA21097AEE
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 15:43:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-217-m0bCIubKNymEqqeBbepCeg-1; Thu, 17 Feb 2022 10:43:01 -0500
X-MC-Unique: m0bCIubKNymEqqeBbepCeg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JzzcN5bDVzw8X
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 10:43:00 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JzzcN5MDPzcbc; Thu, 17 Feb 2022 10:43:00 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JzzcN50RfzcbP
	for <blinux-list@redhat.com>; Thu, 17 Feb 2022 10:43:00 -0500 (EST)
Date: Thu, 17 Feb 2022 10:43:00 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
Message-ID: <efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-MIME-Autoconverted: from QUOTED-PRINTABLE to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21HFh7ci016467
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SmVudXggbWlnaHQgYmUgYSBwb3NzaWJpbGl0eSBpZiBpdCBjYW4gaW5zdGFsbCBhcmNobGludXgg
b24gYSBzeXN0ZW0gaXQKd2lsbCBkbyB0aGF0LiAgV2l0aCBvZGQgaGFyZHdhcmUgdGhhdCdzIHdo
ZW4gdGhpbmdzIGdldCBpbnRlcmVzdGluZyBmb3IKbW9zdCBsaW51eCBzeXN0ZW1zLiAgVGhlIGtp
bGxlciB3aXRoIGdlbnRvbyBpcyB5b3UgaGF2ZSB0byBidWlsZCB5b3VyCmtlcm5lbCB3aXRoIHNw
ZWVjaCBzeW50aGVzaXplciBzdXBwb3J0IGFkZGVkIGFuZCB0aGF0IHRha2VzIGEgd2hpbGUuICBZ
b3UKcmVhbGx5IGhhdmUgdG8gaGF2ZSBkZWVwIGtub3dsZWRnZSBvZiB5b3VyIGhhcmR3YXJlIG90
aGVyd2lzZSB5b3UnbGwgbWFrZQpiYWQgY2hvaWNlcyBpbiB0aGUga2VybmVsIGJ1aWxkaW5nIGFu
ZCB0aGluZ3Mgd29uJ3Qgd29yayBhZnRlcndhcmQgb24KZmlyc3QgYm9vdC4gIFRoZSB3aG9sZSBn
ZW50b28ga2VybmVsIGJ1aWxkIHByb2Nlc3MgY291bGQgYmUgbWFzc2l2ZWx5CnNpbXBsaWZpZWQg
YnkgaGF2aW5nIGEgc3dpdGNoIHdpdGggdGhlIGtlcm5lbCBidWlsZCBzb2Z0d2FyZSB0aGF0IHRl
bGxzCnRoZSBzb2Z0d2FyZSB0aGF0IGRvZXMgdGhlIGJ1aWxkIHRvIGJ1aWxkIHdpdGggYWxsIGhh
cmR3YXJlIG5vdyBlbmFibGVkLgpIYXJkd2FyZSB0aGF0J3Mgbm90IGVuYWJsZWQgd29uJ3QgYmUg
aW5jbHVkZWQgYnV0IG1heWJlIHRoYXQgY291bGQgYmUKYWRkZWQgYW5kIGZpeGVkIGxhdGVyLiAg
SSBuZXZlciBnb3QgZW5vdWdoIGludG8gZ2VudG9vIHRvIGtub3cgaWYgdGhhdCBpcwpwb3NzaWJs
ZS4KCgpPbiBUaHUsIDE3IEZlYiAyMDIyLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIHdyb3RlOgoKPiBUcmlzcXVlbCB3aWxsIGluc3RhbGwsIHdoZXRoZXIgeW91IGhhdmUgdGhl
IGZyZWUgd2lmaSBvciBub3QsIGluIHRoZSBsYXR0ZXIKPiBjYXNlLCBpdCBqdXN0IHdvbid0IHdv
cmssIGJ1dCB5b3VyIGV0aGVybmV0IHdpbGwuwqAgWWVwOyBBcmNoIGFuZCBKZW50b28gYXJlCj4g
dGhlIHRvdWdoIG9uZXMuCj4KPgo+IENoZWVycywKPgo+Cj4gRGF2ZQo+Cj4KPgo+IE9uIDIvMTcv
MjIgMDQ6MzYsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gPiBB
bHNvLCBhcyBJIHNhaWQsIFRyaXNxdWVsIGFsc28gaW5zdGFsbGVkIG9uIHRoaXMgc3lzdGVtIHdp
dGhvdXQgY29tcGxhaW5pbmcKPiA+IGF0IGFsbC4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRo
YXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

