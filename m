Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 4FE4118D6F1
	for <lists+blinux-list@lfdr.de>; Fri, 20 Mar 2020 19:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584728742;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kXAeHsssAvohiz3O4ovptLVxm/yYu5hQs2ATe1F7R8Q=;
	b=afxnc0fWLXw/qesHHjo9N2Rg5kRi97URAnprwphuIbTGOs2HA4y5Lv5G0CkS1be6FOw4QQ
	/9CgGufrAyqTt8WfNTdq+/42i9sIk6oR24MwU+VWO3qAwoagpi3Hj+6lplxewLeyxFlaI6
	eTEfeUDm9KxFOtJW190H4hj3itVnWCc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-320-mjvyucHJNjig3zDObkcPeQ-1; Fri, 20 Mar 2020 14:25:39 -0400
X-MC-Unique: mjvyucHJNjig3zDObkcPeQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A65EE107ACC9;
	Fri, 20 Mar 2020 18:25:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E217F91295;
	Fri, 20 Mar 2020 18:25:31 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D701C18089CE;
	Fri, 20 Mar 2020 18:25:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02KIPKCi031266 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 20 Mar 2020 14:25:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 25C452166B30; Fri, 20 Mar 2020 18:25:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 21E9F2166AE4
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 18:25:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6ADB08CC926
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 18:25:17 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-296-qzn5rYlNP7iUP1Do_QdfOA-1; Fri, 20 Mar 2020 14:25:15 -0400
X-MC-Unique: qzn5rYlNP7iUP1Do_QdfOA-1
Received: by mail-oi1-f179.google.com with SMTP id k21so7532018oij.5
	for <blinux-list@redhat.com>; Fri, 20 Mar 2020 11:25:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=pY+Hv23Z/IuHzEhB4t+WlutiwYkkuQyuIYbmAGeHDw4=;
	b=jDYqCB3z7c2sfGdywpHhVxzmJMu8W+ZrDrkZLjGx1kB+bCupmB1pX/sELABAdVtZ31
	iKwzQLsQBax0Iw+EOxMsdEdV7L9suK+FkzDMdLiNbAZJtdx7JR1l4bdnEWPqwxhPmD5J
	yiJxs239BoB5CmH2cLiHdFDVnlmZTWR21K9GCcG85ADnpOIQzOKCOpf1bHYIZXWWCruH
	QksBI2hHeVqt27qx2xN5YXrrQAyQ+T6kC84Gvsn+DHfcXwLiDsdibGHWc9uxQXPa/zmt
	X26SuZYZtMM6VofubCT0wC7x36F6rhoV/an7oP4lhHHxYkeRH+LoSmCyGsVJE5+cDzBd
	TS+g==
X-Gm-Message-State: ANhLgQ1cXn2Co7MYPpTgPEvJMUxNZYtlfuI/vafn9rg3AHzOMmPlGB0j
	8ppX9VX2dGqu2Vc4R7XIpWJiqSzX
X-Google-Smtp-Source: ADFU+vt+Km5WJG/ZT2bWfmaD1m71JxBjRXqrcLx29753InrhRKkhDx6V/IpPH8n/D3Nx104/ioMa8Q==
X-Received: by 2002:aca:4e57:: with SMTP id c84mr7358990oib.148.1584728713267; 
	Fri, 20 Mar 2020 11:25:13 -0700 (PDT)
Received: from [192.168.1.71] (108-236-63-23.lightspeed.bkfdca.sbcglobal.net.
	[108.236.63.23]) by smtp.gmail.com with ESMTPSA id
	y24sm2126495oto.39.2020.03.20.11.25.10 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Mar 2020 11:25:11 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: What distribution will work with the virtual machine on a Mac?
Date: Fri, 20 Mar 2020 11:25:09 -0700
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
	<8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
	<95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
	<822F2734-8569-45B7-BA28-654D34301B37@pipkrokodil.se>
To: blinux-list@redhat.com
In-Reply-To: <822F2734-8569-45B7-BA28-654D34301B37@pipkrokodil.se>
Message-Id: <18493EC7-A642-46DC-ACED-CE6737BBB800@gmail.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02KIPKCi031266
X-loop: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgc28gaWYgSSB1c2UgVWJ1bnR1IDE5IGhvdyBkdWUgSSBnZXQgc3BlZWNoIG9uIHRoZSBzeXN0
ZW0/IEluIG90aGVyIHdvcmRzIGhvdyBkdWUgSSBzdGFydCBPcmNhIHdoaW4gSSBsb2dpbj8KCj4g
T24gTWFyIDIwLCAyMDIwLCBhdCAwMzozNCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vz
c2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSGkhCj4gQW55IGRpc3Ry
byB0aGF0IGFyZSBhY2Nlc3NpYmxlIGkgdGhpbmsuCj4gSSB1c2UgYW4gb2xkIHZpbnV4IDUuMSBz
eXN0ZW0gYnV0IGkgdGhpbmsgdWJ1bnR1IG9yIGZlZG9yYSBtaWdodCB3b3JrIGFzIHdlbGwuCj4g
Vm13YXJlIEZ1c2lvbiBmb3IgbWFjIGlzIHByaXR0eSBzdHJhaWdodCBmb3J3YXJkLgo+IC9BCj4g
Cj4+IDE5IG1hcnMgMjAyMCBrbC4gMjM6MTAgc2tyZXYgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNvbT46Cj4+IAo+PiBJIGNhbid0IHNwZWFr
IHRvIGEgTWFjLCBidXQgeW91IGNhbiBkZWZpbml0ZWx5IHVzZSBMaW51eCBpbiBhIHZpcnR1YWwg
bWFjaGluZSB3aXRoIHNwZWVjaC4gSSd2ZSB1c2VkIGl0IHdpdGggVk13YXJlLCB3aGljaCBoYXMg
YSBwcm9kdWN0IGZvciB0aGUgTWFjLCBhbmQgd2l0aCBRRU1VL0tWTS4gT3RoZXJzIGhhdmUgdXNl
ZCBpdCB3aXRoIFZpcnR1YWwgQm94IGFzIHdlbGwuCj4+IAo+PiAKPj4gT24gMy8xOS8yMCAxOjU5
IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+Pj4gSGVsbG8s
IG15IHN1YmplY3QgbGluZSBwcmV0dHkgbXVjaCBleHBsYWlucyB0aGUgYmlnIHNpdHVhdGlvbi4g
IFdoYXQgSeKAmW0gd29uZGVyaW5nIGlzICB3aWxsIEZlZG9yYSB3b3JrIGJldHRlciB0aGFuIFVi
dW50dT8gIFRoZSBvdGhlciB0aGluZyB0aGF0IEkgYXBwYXJlbnRseSBhIGJhbmsgbXVzdCBjb25z
aWRlciwgIHdpbGwgYW55IG9mIHRoaXMgd29yayB3b3VsZCBzcGVlY2ggaW4gYSB2aXJ0dWFsIG1h
Y2hpbmUgZW52aXJvbm1lbnQ/ICBBbnkgdGhvdWdodHMgZnJvbSBhbnlvbmU/Cj4+PiAKPj4+IFNp
bmNlcmVseSBNYXVyaWNlIE1pbmVzLgo+Pj4gCj4+PiAKPj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QK
Pj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFp
bG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+PiAKPj4gLS0gCj4+IENocmlzdG9waGVyIChDSikK
Pj4gQ2hhbHRhaW4gYXQgR21haWwKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlz
dGluZm8vYmxpbnV4LWxpc3QKPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3QKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczov
L3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

