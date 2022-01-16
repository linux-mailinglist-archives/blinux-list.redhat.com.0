Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 814FB48FDB4
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 16:55:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642348504;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XFBRXpXGXnFNNusYuAHIt73lgXRcDnY36TKsi4c/HgY=;
	b=jR4lT131ey3mvQhEejUN4DQymqYULmPUB3BtxNpluqg0CT1Zgsm+d0zwKza7BRlsBZOiR1
	Nan3QpK6VN2sjjoUmb3y28fmJc+gfOV3AHLNTX+mxStLto1WHWaXLBfttKa4cB+8pnh5C1
	lJ3Qh4XiQ+kkDI1Tbs1Re1B7MaTm9g4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-587-TXx4vx2rOfqdfgs92r-fsQ-1; Sun, 16 Jan 2022 10:55:00 -0500
X-MC-Unique: TXx4vx2rOfqdfgs92r-fsQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD0AE1898291;
	Sun, 16 Jan 2022 15:54:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9573D753F7;
	Sun, 16 Jan 2022 15:54:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ABF6E4BB7B;
	Sun, 16 Jan 2022 15:54:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GFmeYo028600 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 10:48:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6E9CC2026D6A; Sun, 16 Jan 2022 15:48:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6987C2026D69
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 15:48:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8A59B28FBBD3
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 15:48:37 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com
	[209.85.215.180]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-93-TyqhDYWbOLiNpJk_rnpuRw-1; Sun, 16 Jan 2022 10:48:34 -0500
X-MC-Unique: TyqhDYWbOLiNpJk_rnpuRw-1
Received: by mail-pg1-f180.google.com with SMTP id 8so7513762pgc.10
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 07:48:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=fGGn2vvBTPufZs8Wn0ZSWCcIiPWtQo/Bqx27ee1qwj0=;
	b=AH/hgkiPMAcOeZOx2STyg7y1YkfMGDzAc2mbZqCYM5UReaIMs+4Bsgkmb3xChCEUj2
	LP1zPC/BHJkgm9oO0GvKmFy5zc2irYi4Wbl1c1d50eQw5BwLprfhcNglJgnxmxveB7Az
	bbqk0cHLP4gDsGMQYtzSeTsphpulQQqGaJHl6kansBbRO1APZ+vEh8q3i5hVuxJiC11A
	ISKb9yO001UAL2G96a29n89r7ZKqZNITmtigEThftnyVd8595eugHkqaUa5I8aOFYy8f
	iGSUs5KrQYMCGsHu+slB07qcn0eRS+JL360pD0ylWMp9DFMsFu/k3lY8eZoBDdtnY6vl
	MDKg==
X-Gm-Message-State: AOAM532M4WnrRtFCKXSrYMpevxBg7MQkVHg0QUmbp5WJEpBs+rRnGakJ
	UG+iTk3C7O7zgxLTT8oCOl4zCY1qE5PI17w2GcHXyDt0
X-Google-Smtp-Source: ABdhPJyjtTS8bwzsP67BBBZ4N+ov7hIIAO112r5kXoBiWMUEnYWj7cgDzhjf53yrrIzptOZrU6iwa9fl93ZkSfWQ/Dw=
X-Received: by 2002:a62:8c8e:0:b0:4c1:d0c9:a7a7 with SMTP id
	m136-20020a628c8e000000b004c1d0c9a7a7mr17376628pfd.54.1642348113333;
	Sun, 16 Jan 2022 07:48:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:523:0:0:0:0 with HTTP; Sun, 16 Jan 2022 07:48:32
	-0800 (PST)
In-Reply-To: <cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
Date: Sun, 16 Jan 2022 08:48:32 -0700
Message-ID: <CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
Subject: Re: Getting Started with linux
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20GFmeYo028600
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

SXMgdGhlcmUgYSByZWFzb24gd2h5IHlvdSBoYXZlbid0IHRyaWVkIFNsaW50LCBIb3dhcmQ/IEl0
J3MgYWNjZXNzaWJsZQpvdXQtb2YtdGhlLWJveCAmIGlzIGxpa2VseSBhIGdvb2Qgc3RhcnRpbmcg
cG9pbnQgZm9yIGEgYmVnaW5uZXIuICYKaXQncyBkZXZlbG9wZXIgaXMgYSByZWd1bGFyIHBhcnRp
Y2lwYW50IG9uIGJsaW5kIExpbnV4IG1haWxpbmcgbGlzdCwKaW5jbHVkaW5nIDEgb2YgaGlzIG93
biwgSSBiZWxpZXZlLgoKT24gMS8xNi8yMiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gV2VsbCwgaXQgc291bmRzIGxp
a2UgeW91J3JlIHRlbGxpbmcgbWUgdG8gcnVuIGxpbnV4IHVuZGVyIHdpbmRvd3M/IFRoYXQKPiBp
c24ndCB3aGF0IEkgaGFkIGluIG1pbmQuwqAgSGVyZSdzIHdoYXQgSSd2ZSBsZWFybmVkIHRodXMg
ZmFyOgo+IEkgbmVlZCB0byBkb3dubG9hZCBhIGxpbnV4IE9TOyB0aGVuIG1ha2UgYSBib290YWJs
ZSBtZWRpYSBhbmQgaW5zdGFsbAo+IHRoZSBsaW51eCBJU08gdG8gaXQuCj4KPiBXZWxsLCBJIGRp
ZCB0aGF0Ogo+IGRvd25sb2FkZWQgdWJ1bnR1LTIwLjA0LjMtZGVza3RvcC1hbWQ2NC5pc28KPiBh
bmQgKGZvciBmbGFzaGluZyBpdCB0byB0aGUgdGh1bWIgZHJpdmUpIGJhbGVuYUV0Y2hlci1Qb3J0
YWJsZS0xLjcuMy5leGUKPiBtYWRlIGEgYm9vdGFibGUgdGh1bWIgZHJpdmUgYW5kIGluc3RhbGxl
ZCB1YnVudHUgb24gaXQuCj4KPgo+IE5vdyBJIG5lZWQgdG8gbGVhcm4gaG93IHRvIGluc3RhbGwg
dWJ1bnR1IGZyb20gdGhlIHRodW1iIGRyaXZlLsKgIEkgbXVzdAo+IHNlYXJjaCBmb3IgaW5zdHJ1
Y3Rpb25zIHRvIGdvIG9uIGZyb20gaGVyZS4KPgo+IFRoYW5rcy4KPiBIb3dhcmQKPgo+Cj4gT24g
MS8xNS8yMDIyIDU6NTMgUE0sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3Jv
dGU6Cj4+IFVidW50dSBvciBGZWRvcmEgY291bGQgZG8gdGhhdCBmb3IgeW91LiAgYWx0LXdpbmRv
d3MtcyB0b2dnbGVzIHNwZWVjaCBvbgo+PiBhbmQgb2ZmIGFuZCB5b3Ugd2FudCB0byBjaG9vc2Ug
dHJ5IHVidW50dSBvciB0cnkgZmVkb3JhIGJ1dHRvbnMgb24gdGhlCj4+IGRlc2t0b3Agc2NyZWVu
LiAgRGVza3RvcCBzY3JlZW4gaXMgd2luZG93cy1kIG9uY2Ugc3lzdGVtIGJvb3RzIGFuZCB5b3UK
Pj4gaGF2ZSBzcGVlY2guCj4+Cj4+Cj4+IE9uIFNhdCwgMTUgSmFuIDIwMjIsIExpbnV4IGZvciBi
bGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4+Cj4+PiBIZWxsbyBhbGwsCj4+Pgo+Pj4g
SSd2ZSBiZWVuIHdhbnRpbmcgdG8gdHJ5IG91dCBsaW51eCBidXQgaGF2ZW4ndCB3YW50ZWQgdG8g
Z2l2ZSB1cCBvciBtZXNzCj4+PiB1cAo+Pj4gYW55IG9mIG15IHdvcmtpbmcgd2luZG93cyBzeXN0
ZW1zLsKgIFdvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGluc3RhbGwgc29tZQo+Pj4gdmVyc2lvbiBv
ZiBsaW51eCBvbiBhIENEIG9yIGEgRFZEOyB0aGVuIGp1c3QgYm9vdCBhIGNvbXB1dGVyIGZyb20g
dGhhdAo+Pj4gZGlzawo+Pj4gYnlwYXNzaW5nIHdpbmRvd3MgYWx0b2dldGhlcj/CoCBJZiBzbywg
SSdkIGhhdmUgdG8gbWFrZSBpdCBlaXRoZXIgdGFsayBvcgo+Pj4gZHJpdmUKPj4+IGEgQnJhaWxs
ZSBkaXNwbGF5Lgo+Pj4KPj4+IFdvbmRlciBpZiBhbnlvbmUgd291bGQgaGF2ZSBhbnkgc3VnZ2Vz
dGlvbnM/wqAgVGhhbmsgeW91Lgo+Pj4KPj4+IEhvd2FyZAo+Pj4KPj4+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPj4+Cj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vbGlzdG1hbi5yZWRo
YXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0
Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21h
aWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgotLSAKU3Vic2NyaWJlIHRvIGEgV29yZFByZXNz
IGZvciBOZXdiaWVzIE1haWxpbmcgTGlzdCBieSBzZW5kaW5nIGEgbWVzc2FnZSB0bzoKd3A0bmV3
YnMtcmVxdWVzdEBmcmVlbGlzdHMub3JnIHdpdGggJ3N1YnNjcmliZScgaW4gdGhlIFN1YmplY3Qg
ZmllbGQgT1IgYnkKdmlzaXRpbmcgdGhlIGxpc3QgcGFnZSBhdCBodHRwOi8vd3d3LmZyZWVsaXN0
cy5vcmcvbGlzdC93cDRuZXdicwomIGNoZWNrIG91dCBteSBzaXRlcyBhdCB3d3cuYnJpZ2h0c3Rh
cnN3ZWIuY29tICYgd3d3Lm15c2l0ZXNiZWVuaGFja2VkLmNvbQoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3Q=

