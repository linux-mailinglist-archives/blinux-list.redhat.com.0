Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id C659418C2D4
	for <lists+blinux-list@lfdr.de>; Thu, 19 Mar 2020 23:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584655945;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=njx6qHmVz8ZnRunSne5cESD+vTgUXQ+WrG41hC5pVCo=;
	b=ICXWhzjhpntDQpYfzdpGIWg8DZFflgdmdq/qsnp6DdmyZneesXJpjHrGqNUTpOleOFSheC
	rrnClCnR55uetRq263UcTgmje9lqGU2qOBmY8JFrKciuqqJJtyGkPYoac3hf9F6K0mqHsz
	A+/OTkubFeMA5k+l4TXvewKmpl+atS0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-3H6oDW2LPqGT0JGG-2rsFQ-1; Thu, 19 Mar 2020 18:12:23 -0400
X-MC-Unique: 3H6oDW2LPqGT0JGG-2rsFQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DBDFA1857BE1;
	Thu, 19 Mar 2020 22:12:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BF205D9E2;
	Thu, 19 Mar 2020 22:12:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6441D94295;
	Thu, 19 Mar 2020 22:12:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02JMAJ1K025423 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Mar 2020 18:10:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 42CCB2166AE7; Thu, 19 Mar 2020 22:10:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EF622166AE4
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 22:10:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EF1348F68E0
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 22:10:16 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-341-t_Z0Ce-jNHC51etHc-4FMg-1; Thu, 19 Mar 2020 18:10:14 -0400
X-MC-Unique: t_Z0Ce-jNHC51etHc-4FMg-1
Received: by mail-ot1-f43.google.com with SMTP id e19so4118319otj.7
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 15:10:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=/VOswDrX7Oj4SwUB+XccxrAZ2pJX4khs5y/HGvw8Uls=;
	b=RGH+sk6opPTZkUgp9G+IvZgJ1AL93Bp4T6xTO6HlnbrdXGKYwyGZ136tkUVQ4+3w9C
	MWoGBKbT7CkUI0YaLQPZjyRvpQ8FiJQNzLQtNTtvAwh9Hu/ymi1XzgZg6aaJTkrBHBzk
	vesKG2K0l6BQgg9Ja1zGP+2Rn8MT7lTsgfSxSDXENY2AGmIs9gF5Z3SLNatVDkmgsER7
	MgnmhjWHOJtHGnKBCbr33hnSLvXNWvosI6xd0gIu19sGZ2m0685cGPor9om95oBqgNor
	j5qz5WVKEhmx/ZwDYmtzeZRTQNOmfyeFlqH4XDwccxh4vTlmbYAuFHCpIrqtimq5THIX
	zIyg==
X-Gm-Message-State: ANhLgQ1lVn7xiBFLpSG+TDyJRyPOJ/2aEvGeQY8dqLYidCvbNd+r8xhx
	liLp6Yp1TjfBxwGx72xyY1w+nHTE
X-Google-Smtp-Source: ADFU+vsQtejoSBEA0jG7GDLN6Zc3b2JQbC7ck063EewaBeWz3y7GZtorehhLQUnHB/X5swv3MFKIWA==
X-Received: by 2002:a9d:5a9:: with SMTP id 38mr3900485otd.331.1584655812996;
	Thu, 19 Mar 2020 15:10:12 -0700 (PDT)
Received: from [192.168.1.14] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49])
	by smtp.gmail.com with ESMTPSA id d61sm777800otb.53.2020.03.19.15.10.12
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 Mar 2020 15:10:12 -0700 (PDT)
Subject: Re: What distribution will work with the virtual machine on a Mac?
To: blinux-list@redhat.com
References: <22c752d8-c3ab-f251-7776-c80067fb6b59@gmail.com>
	<8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
Message-ID: <95c9eba9-d7c9-586d-6e17-5ec3f3c001ec@gmail.com>
Date: Thu, 19 Mar 2020 17:10:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8A15AD66-5504-4D26-A304-7B98EE4F3D09@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02JMAJ1K025423
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SSBjYW4ndCBzcGVhayB0byBhIE1hYywgYnV0IHlvdSBjYW4gZGVmaW5pdGVseSB1c2UgTGludXgg
aW4gYSB2aXJ0dWFsIAptYWNoaW5lIHdpdGggc3BlZWNoLiBJJ3ZlIHVzZWQgaXQgd2l0aCBWTXdh
cmUsIHdoaWNoIGhhcyBhIHByb2R1Y3QgZm9yIAp0aGUgTWFjLCBhbmQgd2l0aCBRRU1VL0tWTS4g
T3RoZXJzIGhhdmUgdXNlZCBpdCB3aXRoIFZpcnR1YWwgQm94IGFzIHdlbGwuCgoKT24gMy8xOS8y
MCAxOjU5IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+ICAg
SGVsbG8sIG15IHN1YmplY3QgbGluZSBwcmV0dHkgbXVjaCBleHBsYWlucyB0aGUgYmlnIHNpdHVh
dGlvbi4gIFdoYXQgSeKAmW0gd29uZGVyaW5nIGlzICB3aWxsIEZlZG9yYSB3b3JrIGJldHRlciB0
aGFuIFVidW50dT8gIFRoZSBvdGhlciB0aGluZyB0aGF0IEkgYXBwYXJlbnRseSBhIGJhbmsgbXVz
dCBjb25zaWRlciwgIHdpbGwgYW55IG9mIHRoaXMgd29yayB3b3VsZCBzcGVlY2ggaW4gYSB2aXJ0
dWFsIG1hY2hpbmUgZW52aXJvbm1lbnQ/ICBBbnkgdGhvdWdodHMgZnJvbSBhbnlvbmU/Cj4KPiBT
aW5jZXJlbHkgTWF1cmljZSBNaW5lcy4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgt
bGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZv
L2JsaW51eC1saXN0CgotLSAKQ2hyaXN0b3BoZXIgKENKKQpDaGFsdGFpbiBhdCBHbWFpbAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0
IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

