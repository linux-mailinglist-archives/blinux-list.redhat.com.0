Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E426A449F87
	for <lists+blinux-list@lfdr.de>; Tue,  9 Nov 2021 01:29:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636417741;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Dmc5CtiQ1sFDZY7zHMSXwr7DYngXUJ5b7hh6W6bY7Ds=;
	b=hjZ6IkaG5Rzihog81yrnhtbJYymxZvB1OPMilDU6Wt2m1T6ecn/jNGEDmjTEaxGSDXx6kn
	hYl/VZcLGKMEtLjjqVcPSL5hEDAGQrNaUWxR6ZZscqAi77pVgF689cFI3/Tprayu8yHdDr
	ToYy72eUCqGZfBWCTBYyZGfu7FYo938=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-570-XMSGXhrENdKohsKF4PlCKg-1; Mon, 08 Nov 2021 19:28:59 -0500
X-MC-Unique: XMSGXhrENdKohsKF4PlCKg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 227071023F58;
	Tue,  9 Nov 2021 00:28:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 772FA5C232;
	Tue,  9 Nov 2021 00:28:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9B66B4A703;
	Tue,  9 Nov 2021 00:28:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A90SgQA010904 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Nov 2021 19:28:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AB9DC51E5; Tue,  9 Nov 2021 00:28:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A49AC51E2
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 00:28:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CD5F485A5A8
	for <blinux-list@redhat.com>; Tue,  9 Nov 2021 00:28:39 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-181-6XUX9vSsM6SP5XQ4DL-uiA-1;
	Mon, 08 Nov 2021 19:28:37 -0500
X-MC-Unique: 6XUX9vSsM6SP5XQ4DL-uiA-1
Received: from [192.168.0.10] (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 7E8E4A39AF
	for <blinux-list@redhat.com>; Mon,  8 Nov 2021 23:28:01 +0100 (CET)
Message-ID: <f136a39f-8321-0b11-30da-c0999d7f6fa2@slint.fr>
Date: Tue, 9 Nov 2021 01:28:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: Does any of you use a Whatsapp Linux client?
To: blinux-list@redhat.com
References: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
In-Reply-To: <58ade39f-710c-bd82-f316-04decb37569e@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1A90SgQA010904
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSwKCk9mZiB0b3BpYyBidXQgc3RpbGwuLi4KSSBTbGludCB3ZSBzaGlwOgpuY1Rl
bGVncmFtIGh0dHBzOi8vZ2l0aHViLmNvbS9OYW5vc2ViL25jVGVsZWdyYW0KVGVsZWdyYW0gRGVz
a3RvcCAoSSBqdXN0IHJlYWxpemVkIHRoYXQgd2UgaGF2ZSB0d28gbWVudSBlbnRyaWVzID8/PykK
dGVsZWdyYW0tY2xpIGh0dHBzOi8vZ2l0aHViLmNvbS92eXNoZW5nL3RnCnRlbGVncmFtLXB1cnBs
ZSAocGx1Zy1pbiBmb3IgcGlkZ2luKSAKaHR0cHM6Ly9naXRodWIuY29tL21ham4vdGVsZWdyYW0t
cHVycGxlIChtYXliZSBzd2l0Y2ggdG8gdGRsaWItcHVycGxlKQoKQWxsIHRoaXMgaW4gYWRkaXRp
b24gdG8gVGVsZWdyYW0gV0VCIGFuZCBUZWxlZ3JhbSBvbiB5b3VyIHBob25lLgoKSnV0cyBzYXlp
bmcuLi4KCkNoZWVycywKRGlkaWVyCgpMZSAwOC8xMS8yMDIxIMOgIDE5OjM1LCBMaW51eCBmb3Ig
YmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVsbG8gZm9sa3MsCj4gCj4g
SSBhbSB3b25kZXJpbmcgaWYgYW55IG9mIHlvdSB1c2UgYW4gYWNjZXNzaWJsZSBMaW51eCBjbGll
bnQgZm9yIAo+IFdoYXRzYXBwLiBXaGF0IGlzIHRoZSBiZXN0IHdheSBvZiB1c2luZyBXaGF0c2Fw
cCBvbiBMaW51eCBpZiBubyAKPiBhY2Nlc3NpYmxlIGNsaWVudCBpcyBhdmFpbGFibGU/Cj4gCj4g
QW55IGlkZWFzPwo+IAo+IENoZWVycywKPiAKPiBJYnJhaGltCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

