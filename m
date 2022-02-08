Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EED314AE4E4
	for <lists+blinux-list@lfdr.de>; Tue,  8 Feb 2022 23:46:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644360371;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/pnszOQBKIla9rCknQm5/3tCg/nKnptD6lPwHMvJjbI=;
	b=aVEyLgGa0ldxh1gy5+nIIStPj135xMF1l3QWKTZC01SN4s401TJAVZWAUugfP5w6sz+h64
	gj5uRpoJdsUING2v3cJZz5TWoI+16coOlRvVDi+8MUlnq+mWLukO9Ls1eV4WvnmVaJlhAC
	32mw26R1YTPmqlypjCOu8sI8305TwRY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-149-6gZHs-ntMzuacS2gn-bVqw-1; Tue, 08 Feb 2022 17:45:22 -0500
X-MC-Unique: 6gZHs-ntMzuacS2gn-bVqw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5635B1091DA4;
	Tue,  8 Feb 2022 22:45:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C3A15DBA9;
	Tue,  8 Feb 2022 22:45:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A4CC41826D1C;
	Tue,  8 Feb 2022 22:45:17 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 218C3ZoX008984 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 8 Feb 2022 07:03:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3140B53D7; Tue,  8 Feb 2022 12:03:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D28253DB
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 12:03:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 33640185A794
	for <blinux-list@redhat.com>; Tue,  8 Feb 2022 12:03:31 +0000 (UTC)
Received: from mail2-relais-roc.national.inria.fr
	(mail2-relais-roc.national.inria.fr [192.134.164.83]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-558-b_sWZQPQOceDRJGgFeDa9g-1; Tue, 08 Feb 2022 07:03:29 -0500
X-MC-Unique: b_sWZQPQOceDRJGgFeDa9g-1
X-IronPort-AV: E=Sophos;i="5.88,352,1635199200"; d="scan'208";a="20271379"
Received: from nat-inria-interne-52-gw-01-bso.bordeaux.inria.fr (HELO begin)
	([194.199.1.52]) by mail2-relais-roc.national.inria.fr with
	ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Feb 2022 13:02:25 +0100
Received: from samy by begin with local (Exim 4.95)
	(envelope-from <samuel.thibault@ens-lyon.org>) id 1nHPCT-00FyrN-1K;
	Tue, 08 Feb 2022 13:02:25 +0100
Date: Tue, 8 Feb 2022 13:02:24 +0100
To: Rastislav Kish <rastislav.kish@protonmail.com>
Subject: Re: For all .NET developers: A new SpeechDispatcher client library
Message-ID: <20220208120224.gie7fpgnc3xs2pwq@begin>
Mail-Followup-To: Rastislav Kish <rastislav.kish@protonmail.com>,
	Linux for blind general discussion <blinux-list@redhat.com>,
	speechd-discuss@nongnu.org
References: <fa7165b8-bba6-84ea-cb30-3fbb3a23d917@protonmail.com>
MIME-Version: 1.0
In-Reply-To: <fa7165b8-bba6-84ea-cb30-3fbb3a23d917@protonmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170609 (1.8.3)
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
X-loop: blinux-list@redhat.com
Cc: Linux for blind general discussion <blinux-list@redhat.com>,
	speechd-discuss@nongnu.org
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
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpSYXN0aXNsYXYgS2lzaCwgbGUgbWFyLiAwOCBmw6l2ci4gMjAyMiAxMDoyMDoxNiAr
MDAwMCwgYSBlY3JpdDoKPiBIb3dldmVyLCBvbmUgcGFydGljdWxhciBkcmF3YmFjayBvZiB1c2lu
ZyBpdCBvbiBMaW51eCB3YXMgdGhhdCB0aGVyZSB3YXMKPiBubyBsaWJyYXJ5IGZvciB1c2luZyBT
cGVlY2ggZGlzcGF0Y2hlciwgaS5lLiBnZXR0aW5nIHNwZWVjaCB3YXMgYSBiaXQKPiBwcm9ibGVt
YXRpYy4KPiBUaGF0J3Mgd2h5IEkndmUgZGVjaWRlZCB0byBkZXZlbG9wIGEgZnVsbC1mbGVkZ2Vk
IFNwZWVjaCBkaXNwYXRjaGVyIGluCj4gcHVyZSBDIywgYW5kIGFzIG9mIHRvZGF5LCBJbSBoYXBw
eSB0byByZWxlYXNlIGl0IGZvciBhbnlvbmUgdG8gdXNlIHVuZGVyCj4gdGhlIHRlcm1zIG9mIHRo
ZSBHTlUgTGVzc2VyIEdlbmVyYWwgUHVibGljIExpY2Vuc2UgdjIuMS4KPiBGb3IgbW9yZSBpbmZv
cm1hdGlvbiwgc2VlIHRoZSBvZmZpY2lhbCBwcm9qZWN0IHJlcG9zaXRvcnk6Cj4gaHR0cHM6Ly9n
aXRodWIuY29tL1Jhc3Rpc2xhdktpc2gvU3BlZWNoRGlzcGF0Y2hlcgoKQ291bGQgaXQgbWFrZXMg
c2Vuc2UgdG8gaW50ZWdyYXRlIGl0IGludG8gdGhlIHNwZWVjaGQgcmVwb3NpdG9yeSwgYWxvbmcK
dGhlIG90aGVyIGJpbmRpbmdzPyBUaGF0IHdvdWxkIG1ha2UgaXQgbXVjaCBtb3JlIGFwcGFyZW50
IHRvIHBlb3BsZQp0cnlpbmcgdG8gdXNlIHNwZWVjaCBpbiBDIyBhcHBsaWNhdGlvbnMuCgo+IEkg
YWRtaXQgdGhlIGRvY3VtZW50YXRpb24gaXMga2luZCBvZi4uLiBub24tZXhpc3RlbnQgYXQgdGhp
cyBwb2ludC4gSSdtCj4gbm90IHN1cmUgd2hlbiBkbyBJIGdldCB0byB3cml0aW5nIG9uZSwgSSBo
YXZlIGxvdCBvZiBvdGhlciBwcm9qZWN0cwo+IGdvaW5nIG9uLCBzbyBJIGRvbid0IHdhbnQgdG8g
c3BlbmQgbXVjaCB0aW1lIG9uIHRhc2tzIGxpa2UgdGhpcy4KCkknZCBzdGlsbCBzYXkgdGhhdCBk
b2N1bWVudGF0aW9uIGlmIGFzIGltcG9ydGFudCwgaWYgbm90IG1vcmUsIGFzCmltcGxlbWVudGF0
aW9uLgoKU2FtdWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

