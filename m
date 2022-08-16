Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 958AB5961D6
	for <lists+blinux-list@lfdr.de>; Tue, 16 Aug 2022 20:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1660673068;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LbgOcYuIg5vsQxlULsytE9ykRpN2w1syOipqLjVFVMk=;
	b=Z8+gcq+SB1sMyFB7SGZ83bT+mynzXBeWatJHpxXwr4FFvU2YCzynLLbTP3HbSegPiqoruQ
	VGlwM+n2PsklAP6V18GC4nOe+DtPq0Z/WlXKNFo1ups6l/yHXoFB/Y0EqegJKSgEVAZTtP
	rsxA0dj/wWTMkrWjj49lTquAy891BY8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-367-2yt_mNQdOzOWutrEQlmepA-1; Tue, 16 Aug 2022 14:04:26 -0400
X-MC-Unique: 2yt_mNQdOzOWutrEQlmepA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 02B0C8041BE;
	Tue, 16 Aug 2022 18:04:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 77821C15BA6;
	Tue, 16 Aug 2022 18:04:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id E69A4193F6E8;
	Tue, 16 Aug 2022 18:04:18 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 16 Aug 2022 19:54:31 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: "Accessibility in Fedora Workstation" (fwd)
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>
References: <02fe01d8af46$46cde5e0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131554070.1255408@server2.shellworld.net>
 <031101d8af50$8f3d3fb0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208131909070.1258388@server2.shellworld.net>
 <033301d8af87$4227f3f0$80ffa8c0@Win7VM>
 <Pine.LNX.4.64.2208140031380.1264046@server2.shellworld.net>
 <Pine.LNX.4.64.2208160617250.1327201@server2.shellworld.net>
 <049901d8b17d$8869e7e0$80ffa8c0@Win7VM>
 <mailman.1179.1660669012.10498.blinux-list@redhat.com>
 <mailman.1211.1660669879.10502.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.1211.1660669879.10502.blinux-list@redhat.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Message-ID: <mailman.1247.1660673058.10504.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uLCBsZSBtYXIuIDE2IGFv
w7t0IDIwMjIgMTg6MTE6MTQgKzAxMDAsIGEgZWNyaXQ6Cj4gQnV0IGp1c3QgYXMgd2ViIGJyb3dz
ZXJzIGFyZSB1cGRhdGVkIGZvciBzZWN1cml0eS4gSSdkIGxpa2UgdG8gc2VlCj4gQTExWSBzdHVm
ZiB1cGRhdGVkIGFzIHdlbGwuCgpCYWNrcG9ydHMgYXJlIGF2YWlsYWJsZSBpbiBEZWJpYW4sIHRv
IGdldCB0aGUgbGF0ZXN0IGF0c3BpJm9yY2EgcmVsZWFzZXMKaW5zdGFsbGVkIG9uIGEgc3RhYmxl
IHN5c3RlbS4gTm8gYmFja3BvcnRzIG9mIHRoZSB3aG9sZSBnbm9tZSBkZXNrdG9wLAp0aG91Z2gg
KHRoYXQgd291bGQgYmUgYSBkZXBlbmRlbmN5IGhlbGwpLgoKU2FtdWVsCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxp
c3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

