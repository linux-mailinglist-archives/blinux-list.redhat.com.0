Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 24156174FC2
	for <lists+blinux-list@lfdr.de>; Sun,  1 Mar 2020 22:04:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583096681;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=acLAzx7kJAy8hIOgHcqjTO47wkYy/OJVmYbxmDqapnM=;
	b=aU08KBR6BD63/9eZgr6R1801wyoJ/I9Kw7SgH+TKOxTnpHpx40A+Hk1shNapUjTYc+F5dv
	eQnct2pc9aVOq0/zzbTuh7haoaMKGwzRfpN9Hph0YeclTBTtPDE/qgPZ4OEq5lVJJH/96U
	sgorwg2vsBd9C6w43b5NikRl6e53w/4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-z0f0bCayPoyRzf44p8CpQA-1; Sun, 01 Mar 2020 16:04:39 -0500
X-MC-Unique: z0f0bCayPoyRzf44p8CpQA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C03F91005516;
	Sun,  1 Mar 2020 21:04:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EE445D9C9;
	Sun,  1 Mar 2020 21:04:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9B1DB1809567;
	Sun,  1 Mar 2020 21:04:33 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 021L4RHk008505 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 1 Mar 2020 16:04:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0DC726C33D; Sun,  1 Mar 2020 21:04:27 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09BC36C335
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 21:04:24 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6943F80067A
	for <blinux-list@redhat.com>; Sun,  1 Mar 2020 21:04:24 +0000 (UTC)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-213-h883QpE-Nzq5AxYKJfL04g-1; Sun, 01 Mar 2020 16:04:21 -0500
X-MC-Unique: h883QpE-Nzq5AxYKJfL04g-1
Received: by mail-wr1-f43.google.com with SMTP id r7so10002847wro.2
	for <blinux-list@redhat.com>; Sun, 01 Mar 2020 13:04:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=VIFYQN1roFh8rg3/9d0bNJjV5CTYnp258B8PAN0bGx0=;
	b=RSqXSSNV8qanDyOPDSdBv1fxTi8DjEDWWNn4Yy9N15f6aWQLS00HUL1l+5IhWkNUUC
	Cey5d0rzEK+H36i0OqU7Dj/hA3Bp7zkDghuqtnMIrfQI5dptI9pHouqKe2khblnd6qCH
	7CAuO/+CT+SbvOhcHpRmDEgt3PNt0Hnm3ARU2B4iZkMd+h/C4TVjz0KylxsU/n1vl6Dn
	OQEgFZFqEeF+3f5HXPrHMJ6aebM37fmXNHE7C4CHJIpfkHaqZbIGWlgLKZkpy4MyPFRA
	QQ9CY5NfwcPgYWIn6ejhTNerau0/F7wdcP+eMhUp3rKho9WVSJ2QYPki0ZTxTOhEE5wf
	s0fg==
X-Gm-Message-State: APjAAAUUFvl4KVPczLMQlreWXjQOipnfuquCbdwP1IZJsLh7zYW9FKnR
	1ymfl4K3/XF+SiQGdjZsLgjL5Nt3Io2NV4ooYWjXXA==
X-Google-Smtp-Source: APXvYqzRql33sWFjUDXA5OlKpXhZWRzNX8bMa7sd9YUAFyzt7MMNnlhMXN1UimcN9v0nyc1Rx4rD/RZlRIKVngwuDQY=
X-Received: by 2002:adf:828b:: with SMTP id 11mr17620335wrc.169.1583096660068; 
	Sun, 01 Mar 2020 13:04:20 -0800 (PST)
MIME-Version: 1.0
References: <20200301111759.GA12551@abilitiessoft>
In-Reply-To: <20200301111759.GA12551@abilitiessoft>
Date: Sun, 1 Mar 2020 16:04:12 -0500
Message-ID: <CAJKfDDE7y-5UjHc87Xm_KDPV9-fc6Kuee+fSEtbmFxG7CptCOA@mail.gmail.com>
Subject: Re: Want to try a GUI. Which one is best?
To: blinux-list <blinux-list@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWF0ZSBpcyBncmVhdCBidXQgZXZlbiBiZXR0ZXIgd2l0aCBDb21waXogdW5kZXIsIE1hdGUgdHdl
YWsgaXMgaGVscGZ1bCB0bwphZGQgaXQgYnV0IGNvbW1hbmQgbGluZSBtaWdodCBiZSBiZXR0ZXIu
CgpMZSBkaW0uIDEgbWFycyAyMDIwIDA2OjU0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDwKYmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gYSDDqWNyaXQgOgoKPiBIZWxsbywKPgo+
IEkgYW0gdXNpbmcgRGViaWFuIGNvbW1hbmQgbGluZSBhcyBtdWNoIGFzIHBvc3NpYmxlLiBXaGVu
IEkgbXVzdCBkZWFsIHdpdGgKPiBhIEdVSSBJIHVzZSBNaWNyb3NvZnQgV2luZG93cyAxMC4gSG93
ZXZlciwgaSdtIGdldHRpbmcgZGlzZ3VzdGVkIHdpdGgKPiBNaWNyb3NvZnQncwo+IHVwZGF0ZXMs
IHdoaWNoIGl0IG1ha2VzIHdpdGhvdXQgYXNraW5nIHBlcm1pc3Npb24uIHRoZXkga2VlcCBjYXVz
aW5nCj4gdHJvdWJsZSB3aXRoIG15IGNvbXB1dGVycy4gSSd2ZSBoZWFyZCBvZiBzZXZlcmFsIExp
bnV4IERlc2t0b3AKPiBlbnZpcm9ubWVudHMsIGJ1dCBJJ20KPiBza2VwdGljYWwgaWYgdGhleSBh
cmUgYXMgZ29vZCBhcyBXaW5kb3dzLiBXaGljaCBvbmUgd291bGQgeW91IHJlY29tbWVuZD8KPgo+
IEkgd2FudCBteSBMaW51eCBtYWNoaW5lIHRvIGNvbnRpbnVlIHRvIGJvb3QgaW50byB0aGUgY29t
bWFuZCBsaW5lLCBhbmQKPiB3aGVuIEkgd2FudCBhIEdVSSB0byBzdGFydCBpdCB3aXRoIGEgc2lt
cGxlIGNvbW1hbmQsIG9yIG1heWJlIGEgc2hlbGwKPiBzY3JpcHQuCj4KPiBUaGFua3MsCj4gSm9o
bgo+Cj4gLS0KPiBKb2huIEouIEJveWVyCj4gRW1haWw6IGpvaG4uYm95ZXJAYWJpbGl0aWVzc29m
dC5vcmcKPiB3ZWJzaXRlOiBodHRwOi8vd3d3LmFiaWxpdGllc3NvZnQub3JnCj4gU3RhdHVzOiBD
b21wYW55IGRpc3NvbHZlZCBidXQgd2Vic2l0ZSBhbmQgZW1haWwgYWRkcmVzc2VzICBsaXZlLgo+
IExvY2F0aW9uOiBNYWRpc29uLCBXaXNjb25zaW4sIFVTQQo+IE1pc3Npb246IGRldmVsb3Bpbmcg
YXNzaXN0aXZlIHRlY2hub2xvZ3kgc29mdHdhcmUgYW5kIHByb3ZpZGluZyBTVEVNCj4gc2Vydmlj
ZXMKPiAgICAgICAgIHRoYXQgYXJlIGF2YWlsYWJsZSBhdCBubyBjb3N0Cj4KPgo+Cj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBt
YWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0
LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

