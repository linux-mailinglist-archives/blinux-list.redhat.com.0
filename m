Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 514286D86ED
	for <lists+blinux-list@lfdr.de>; Wed,  5 Apr 2023 21:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680723329;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3qNBQR2K0n1d68Bg1qMksIsgHc80685/uDF99XQPAnw=;
	b=eqDxb1VsS+2L7kquTswLM789U5zVQdVpbVwPyBUjhOD+aAbLiWndX1zfQOCi7ngNTSd07y
	WPOR/7yi0qvlpApqB6WhXUDqCD8QrnLOI70ZQ0/SgQmeFjeUrOZDkvd55aVZ2aJ4ZQsDHx
	YfZqGNHiACkN9lGF4suJ56IIeKCOzH0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-352-V55A2HUVN5S34HgaZnbGLg-1; Wed, 05 Apr 2023 15:35:27 -0400
X-MC-Unique: V55A2HUVN5S34HgaZnbGLg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 931783C0254C;
	Wed,  5 Apr 2023 19:35:24 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E4833492C14;
	Wed,  5 Apr 2023 19:35:23 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 64B7919465A4;
	Wed,  5 Apr 2023 19:35:23 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 5 Apr 2023 21:35:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: Updating ATSPI on Ubuntu
To: blinux-list@redhat.com
References: <mailman.2260.1680722334.558766.blinux-list@redhat.com>
In-Reply-To: <mailman.2260.1680722334.558766.blinux-list@redhat.com>
Message-ID: <mailman.2194.1680723322.558775.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgpUaGUgcGFja2FnZSB0byB1cGdyYWRlIGlzIGF0LXNwaTItY29yZSwgdG8gaXRzIGxh
dGVzdCB2ZXJzaW9uIDIuNDguMC4KClVidW50dSBvbmx5IHByb3ZpZGVzIHRoaXMgdmVyc2lvbiBm
b3IgTHVuYXIsIGV4cGVjdGVkIHRvIGJlIHJlbGVhc2VkIG9uICBBcHJpbAoyMCwgMjAyMyBhY2Nv
cmRpbmcgdG8gdGhpcyBwYWdlOiBodHRwczovL3dpa2kudWJ1bnR1LmNvbS9SZWxlYXNlcwoKTWVh
bndoaWxlIHlvdSB3b3VsZCBoYXZlIHRvIGJ1aWxkIGl0IHlvdXJzZWxmLiBCZWFyIGluIG1pbmQg
dGhhdCBpdCBhbHNvCnN1cGVyc2VkZXMgdGhlIHBhY2thZ2VzIGF0ayBhbmQgYXQtc3BpMi1hdGss
IHdob3NlIGNvbnRlbnRzIGFyZSBub3cgaW5jbHVkZWQgaW4KYXQtc3BpMi1jb3JlLgoKRGlkaWVy
Ci0tCkRpZGllciBTcGFpZXIKZGlkaWVyYXRzbGludGRvdGZyCgpMZSAwNS8wNC8yMDIzIMOgIDIx
OjE2LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIGEgw6ljcml0wqA6Cj4gSGVs
bG8sCj4gCj4gaXMgc29tZSB3YXkgdG8gdXBkYXRlIEFUU1BJIG9uIFVidW50dSBNYXRlIDIyLjA0
IG9uIFJhc3BiZXJyeSBQaT8gSSB3b3VsZCBsaWtlIHRvIHVzZSBuZXcgT3JjYSBNYXN0ZXIgNDUg
UHJlYWxwaGEsIGJ1dCBJIGNhbid0IGJlY2F1c2Ugb2xkIHZlcnNpb24gQVRTUEkuIE9uIFVidW50
dSBNYXRlIDIyLjA0IGlzIDIuMi40NCBhbmQgSSBuZWVkIDIuMi40OCBJIHRoaW5rLgo+IAo+IFRo
YW5rcyBhIGxvdC4KPiAKPiBCZXN0IHJlZ2FyZHMKPiAKPiBWb2p0YS4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlz
dApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3QK

