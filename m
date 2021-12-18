Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B73BC479C56
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 20:38:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639856280;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fIt+ZMY7IljNmsvl5zRhPkHYo9tbwWrPnPQ5icyIYcc=;
	b=Aw/RWJqApxDDhBR59B2jLq2tcDDx1KvPysqa7PwBgoCq1SKtuGu48pPvHNGHvEf4QXrptt
	XWJevpoFtJ3g77IGdSMcfId/Z5J8gBrIDoUj+VNoYGbNOVqb/brCSZGMbfAxa/8Mhhn9N5
	12uVLL44o7ha/IA7hhDToPQvuUEOPhs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-255-k4OaUCwPOUKLUkuvGZDiAg-1; Sat, 18 Dec 2021 14:37:57 -0500
X-MC-Unique: k4OaUCwPOUKLUkuvGZDiAg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7E4681006AA0;
	Sat, 18 Dec 2021 19:37:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5A4851037F43;
	Sat, 18 Dec 2021 19:37:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DCED71809CB8;
	Sat, 18 Dec 2021 19:37:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIJUr7w021298 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 14:30:53 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4CCCB200ACC4; Sat, 18 Dec 2021 19:30:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47B442144B29
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 19:30:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 375F11C04B69
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 19:30:50 +0000 (UTC)
Received: from smtprelay01.ispgateway.de (smtprelay01.ispgateway.de
	[80.67.18.13]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-589-OnXF_nrVPA24udnTKkh5Bw-1; Sat, 18 Dec 2021 14:30:48 -0500
X-MC-Unique: OnXF_nrVPA24udnTKkh5Bw-1
Received: from [37.4.229.93] (helo=smtpclient.apple)
	by smtprelay01.ispgateway.de with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
	(envelope-from <chrys@linux-a11y.org>) id 1myfQ1-0002Jq-O4
	for blinux-list@redhat.com; Sat, 18 Dec 2021 20:30:57 +0100
Mime-Version: 1.0 (1.0)
Subject: Re: fenrir-screenreader and python 3.10
Date: Sat, 18 Dec 2021 20:30:46 +0100
Message-Id: <D056062F-AB74-40CE-8836-D7163C2DAE7F@linux-a11y.org>
References: <alpine.NEB.2.23.451.2112181416290.28889@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2112181416290.28889@panix1.panix.com>
To: blinux-list@redhat.com
X-Df-Sender: Y2hyeXNAbGludXgtYTExeS5vcmc=
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1BIJUr7w021298
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93ZHksCgpXZWxsIHlvdSBkb27igJl0IGhhdmUgdG8gcmVidWlsZCBidXQgaWYgeW91IGhhdmUg
aXQgaW5zdGFsbGVkIHlvdSBoYXZlIHRvIHJlaW5zdGFsbCBpdCB3aXRoIGV2ZXJ5IG5ldyBtYWpv
ciBQeXRob24gdmVyc2lvbiB0byBwbGFjZSB0aGUgc291cmNlcyBpbiB0aGUgbG9jYWwgUHl0aG9u
IHJlcG9zaXRvcnkuICBTbyB0aGV5IGNhbiBiZSBmb3VuZCBieSB0aGUgaW50ZXJwcmV0ZXIuCgoK
Cj4gQW0gMTguMTIuMjAyMSB1bSAyMDoyMCBzY2hyaWViIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+Ogo+IAo+IO+7v0ZlbnJpciB3aWxs
IG5lZWQgcmVidWlsZGluZyBsb2NhbGx5IGFzIHdpbGwgYWxsIG90aGVyIG9sZGVyIHB5dGhvbgo+
IGFwcGxpY2F0aW9ucy4KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhh
dC5jb20KPiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

