Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8C9B72830F8
	for <lists+blinux-list@lfdr.de>; Mon,  5 Oct 2020 09:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601883435;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=eONUsdjlFVmGzvOF1Md6KBZje/6R5hwWkQm846vGzfc=;
	b=O2acFbA3KNG4qL6he/N2oWFQE0i6xiH55gyD+NHNiIIxYQcgM2kaio/CNwnmNUAdewLV+S
	lZxedlYqThBBo6FtYwn+retTmh3enzrcS1uzD51dNkfGi+bgwj2hGTO1/Gc7C0YB3CQREN
	eCNyKpExje5Fj54AC4lrONkdtoik/NQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-421-BOptoAxBOoWhhRgbLXnz2g-1; Mon, 05 Oct 2020 03:37:13 -0400
X-MC-Unique: BOptoAxBOoWhhRgbLXnz2g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 575A58030A5;
	Mon,  5 Oct 2020 07:37:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9527960BFA;
	Mon,  5 Oct 2020 07:37:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B8A1144A4A;
	Mon,  5 Oct 2020 07:37:02 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0957ZNH7025995 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Oct 2020 03:35:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C0763202450E; Mon,  5 Oct 2020 07:35:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA84C2028CCE
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 07:35:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 42E89811E79
	for <blinux-list@redhat.com>; Mon,  5 Oct 2020 07:35:20 +0000 (UTC)
Received: from smtprelay01.ispgateway.de (smtprelay01.ispgateway.de
	[80.67.18.13]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-225-ci68m9obNDi9JWWhRrpvAg-1; Mon, 05 Oct 2020 03:35:17 -0400
X-MC-Unique: ci68m9obNDi9JWWhRrpvAg-1
Received: from [80.187.106.139] (helo=[10.163.90.11])
	by smtprelay01.ispgateway.de with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
	(envelope-from <chrys@linux-a11y.org>) id 1kPKwh-00014H-VT
	for blinux-list@redhat.com; Mon, 05 Oct 2020 09:30:08 +0200
Mime-Version: 1.0 (1.0)
Subject: Re: Linux screenreaders/MUD clients
Date: Mon, 5 Oct 2020 09:32:34 +0200
Message-Id: <132D9798-5F96-4444-B0AB-D9F5AD680420@linux-a11y.org>
References: <a9510efc-cd13-1c43-d09a-453238dfe566@gmail.com>
In-Reply-To: <a9510efc-cd13-1c43-d09a-453238dfe566@gmail.com>
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

aG93ZHksCgpXZSB1c2UgcG93d293IGhlcmUKCmh0dHBzOi8vd3d3Lmhvb3Bham9vLm5ldC9wcm9q
ZWN0cy9wb3d3b3cuaHRtbAoKQ2hlZXJzIGNocnlzCgo+IEFtIDAzLjEwLjIwMjAgdW0gMTY6NTYg
c2NocmllYiBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEBy
ZWRoYXQuY29tPjoKPiAKPiDvu79Ib3BlZnVsbHkgdGhpcyBkb2VzbnQgc2V0IG9mZiBhIGZsb29k
IG9mIG1lc3NhZ2VzIDopCj4gCj4gQXNpZGUgZnJvbSBUaW55RnVndWUgYW5kIFRpbnRpbisrLCB3
aGF0IG90aGVyIGNsaWVudHMgZm9yIE1VKiBhcmUgb3V0IHRoZXJlIHRoYXQgc3VwcG9ydCBPcmNh
IG9yIGNvbnNvbGUgc2NyZWVucmVhZGVycz8KPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51
eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3QKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20K
aHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

