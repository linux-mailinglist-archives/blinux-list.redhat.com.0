Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B35FE32B8C5
	for <lists+blinux-list@lfdr.de>; Wed,  3 Mar 2021 15:57:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614783449;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ioLoElN8haF+SEV1UuEQbyUD+CkLW+ojCNPJYduf2EM=;
	b=dom/T85hTANOF+nko4yARey2cI/fj/ycTy0Mp5cxusUJSo7oj9ep3fGAEfw+dqn6+Vde1E
	N/7i777tX0OBjzHp1Q4mIVpzqQQskGC6pnb11ugjFmwBOzCXvH2wuYDyM7b7LdJW3U26lF
	A59bNDGy/QWz5RRhtCN797+SwmepEgg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-47-uuOnO1iHOkywbNhNsek8nA-1; Wed, 03 Mar 2021 09:57:26 -0500
X-MC-Unique: uuOnO1iHOkywbNhNsek8nA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2778D102CB2F;
	Wed,  3 Mar 2021 14:57:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0EC5310016FD;
	Wed,  3 Mar 2021 14:57:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4B6CA18095C7;
	Wed,  3 Mar 2021 14:57:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 123EsscS011674 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Mar 2021 09:54:55 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B8D3A15233A7; Wed,  3 Mar 2021 14:54:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B47EE15233A0
	for <blinux-list@redhat.com>; Wed,  3 Mar 2021 14:54:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7893585A59D
	for <blinux-list@redhat.com>; Wed,  3 Mar 2021 14:54:51 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-437-7said_pQODOgWIxC6O1Lsg-1; Wed, 03 Mar 2021 09:54:48 -0500
X-MC-Unique: 7said_pQODOgWIxC6O1Lsg-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.5] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx2.simplelogin.co (Postfix) with ESMTP id E53815D7CB
	for <blinux-list@redhat.com>; Wed,  3 Mar 2021 14:45:41 +0000 (UTC)
In-Reply-To: <161455357543.7.13757364850932937689.4296699@simplelogin.co>
References: <e522fc17-0959-e498-347d-d0e55e57d529@gmail.com>
	<e0a3d579-6450-a6be-deaf-f1ea92cc8e82@hubert-humphrey.com>
	<5f2b4e21-b876-167a-1553-d58f45f0b460@gmail.com>
	<88ac7718-75d3-17b8-7bcd-73f33a71a80@hubert-humphrey.com>
	<1dd528c9-d7ee-9140-d54a-903c2a208d79@gmail.com>
	<161446814123.8.7902586507444098707.4271150@simplelogin.co>
	<161447494525.8.17811239841066658738.4272534@slmail.me>
	<161447666901.8.13140491573543472108.4272803@simplelogin.co>
	<161453342282.6.13142153429195754961.4290790@slmail.me>
	<161455357543.7.13757364850932937689.4296699@simplelogin.co>
Subject: Re: Running Android Voices in Linux?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161478274177.7.14231586876145638193.4381887@slmail.me>
Date: Wed, 03 Mar 2021 14:45:41 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 4381887
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

SGkgS2FyZW4sCkknbSBpbiBDYWxpZm9ybmlhLiBJJ2QgYmUgaGFwcHkgdG8gY29ubmVjdCB3aXRo
IHlvdXIgYXNzb2NpYXRlIGlmIGhlJ2QgYmUgaW50ZXJlc3RlZC4KSSd2ZSBiZWVuIGEgYml0IHBy
ZW9jY3VwaWVkIHRoZSBsYXN0IGNvdXBsZSBvZiBkYXlzIHdpdGggbG9va2luZyBhcm91bmQgZm9y
IGEgbmV3IGNvbXB1dGVyLCBzbyBJIGhhdm4ndCBtYWRlIHRoZSB0aW1lIHRvIHJlYWQgeWV0IGlm
IHRoZXJlIGlzIGFueSBsaWNlbnNpbmcgaW52b2x2ZWQgaWYgb25lIHdlcmUgdG8gY3JlYXRlIGEg
cHJvZ3JhbSBsaW5raW5nIEl2b25hIHRvIE9yY2EvU3BlYWt1cCBhbmQgd2lkZWx5IGRpc3RyaWJ1
dGluZyBpdC4gCk9mIGNvdXJzZSBJIHdvdWxkIHByZWZlciB0byB3b3JrIHdpdGggcHVyZWx5IG9w
ZW4gc291cmNlIHNvZnR3YXJlLgpCdXQgYXMgZmFyIGFzIEkga25vdywgSXZvbmEgaXMgcHJvcHJp
ZXRhcnksIGxpa2Ugd2l0aCB0aGUgSXZvbmEgdm9pY2UgSSB1c2Ugb24gV2luZG93cywgSSBoYWQg
dG8gcHVyY2hhc2UgaXQgYW5kIHRoYXRzIGp1c3QgYW4gaW5kaXZpZHVhbCBjb3B5LgpCdXQgUmVh
ZHNwZWFrZXIgYXBwYXJlbnRseSBvZmZlcnMgYW4gSXZvbmEgc2RrIGNvbXBhdGlibGUgd2l0aCBM
aW51eCwgYW5kIHRoZW4gb2YgY291cnNlIHRoZXJlIGFyZSB0aGUgZmlsZXMgdGhhdCBDaGltZSBm
b3VuZCwgc28gSSdtIGFzc3VtaW5nIHRoZXJlIG11c3QgYmUgc29tZSBzb3J0IG9mIGxpY2Vuc2lu
ZyBpbnZvbHZlZCB0byBkaXN0cmlidXRlIGl0IG9uIGEgZ2xvYmFsIGxldmVsIGFzIGEgcGx1Z2lu
L2FkZC1vbiB0byBPcmNhIGFuZCBDb25zb2xlIHJlYWRlcnMuIEkgdGhpbmsgSXZvbmEgdm9pY2Vz
IGFyZSBzb21lIG9mIHRoZSBiZXN0IHF1YWxpdHkgb3V0IHRoZXJlLCBzbyBJIHRoaW5rIGl0cyB3
b3J0aCBpdCB0byB3b3JrIHdpdGggcHJvcHJpZXRhcnkgc29mdHdhcmUgaW4gdGhpcyBjYXNlLiBJ
IGp1c3QgaGF2ZSBub3QgZmFtaWxpYXJpemVkIG15c2VsZiB3aXRoIHRoZSBsZWdhbGl0aWVzIG9m
IGl0IHlldCwgKGFzc3VtaW5nIHRoZXJlIG11c3QgYmUgc29tZSkuwqBJIHBsYW4gdG8gdGFrZSBh
IGxvb2sgYXQgaXQgdG9kYXkuCklmIHlvdXIgYXNzb2NpYXRlIGlzIGluIENhbGlmb3JuaWEsIG9y
IGV2ZW4gaWYgaGUgaXMgaW4gYSBkaWZmZXJlbnQgc3RhdGUgYnV0IHN0aWxsIGludGVyZXN0ZWQs
IHBlcmhhcHMgaGUgaGFzIGFzc29jaWF0ZXMgb24gdGhlIFdlc3QgQ29hc3QsIG9yIGNvdWxkIGNv
bnRyaWJ1dGUgaGlzIHNraWxscyByZW1vdGVseS4gCkknbSB1cCBmb3IgY29ubmVjdGluZyB3aXRo
IGFueW9uZSB3aG8gaXMgaW50ZXJlc3RlZC4KUGxlYXNlIGxldCBoaW0ga25vdyB0aGF0IEkgZG8g
bm90IHlldCBoYXZlIGEgcHJvamVjdCB0ZWFtIHVwIGFuZCBnb2luZywgYnV0IHRoYXQgaXMgdGhl
IGdvYWwgSSBhbSBhaW1pbmcgZm9yIGlmIHB1dHRpbmcgSXZvbmEgb24gTGludXggaXMgcG9zc2li
bGUuIEkgYW0gaW4gdGhlIGJlZ2lubmluZyBzdGFnZXMgb2YgcmVhY2hpbmcgb3V0IHRvIHBlb3Bs
ZSB3aG8gbWlnaHQgYmUgaW50ZXJlc3RlZCwgYW5kIHNlZWluZyBpZiBpdCBpcyBwb3NzaWJsZSB0
byBtYWtlIHRoaXMgd29yay4gSSBob3BlIHRvIGhhdmUgdGhlIG9wcG9ydHVuaXR5IHRvIGNvbm5l
Y3Qgd2l0aCBoaW0gYW5kIHB1dCBzb21ldGhpbmcgdG9nZXRoZXIuwqAKT2ssIEknbSBvZmYgdG8g
Z28gcmVhZCB1cCBvbiB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgdGhvc2UgZmlsZXMgbm93LiBIb3Bl
ZnVsbHkgSSdsbCBiZSBhIGJpdCBtb3JlIHZlcnNlZCBvbiB0aGUgbGVnYWxpdGllcyB3aGVuIEkg
Y2hlY2sgaW4gdG9tb3Jyb3cuIApUaGFua3MsClNMCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlz
dEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8v
YmxpbnV4LWxpc3Q=

