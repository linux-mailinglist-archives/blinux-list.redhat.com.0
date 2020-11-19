Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 131372B92B7
	for <lists+blinux-list@lfdr.de>; Thu, 19 Nov 2020 13:46:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1605789984;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vigXQPXwKCYhdWlCrIV/qPM0MwEGXkHCFDrX07PhDk0=;
	b=h2vh8XUZX0twARUmSHdfmDf0Avepkm0474b/FRCaxw8SVNgaPBF+lI1DkOch2YaFdeEtPj
	KvqzpRMiWEMgmBiI4z5X0oweayKjHfS8ObhtYY1F68g3hFUoC4w92M+M6CNXxs2okHISHQ
	ScoAm3Apnaqwlz+tpvfuM71qXecqHbs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-7-zFidKsL1MWq43GewEuQI5g-1; Thu, 19 Nov 2020 07:46:22 -0500
X-MC-Unique: zFidKsL1MWq43GewEuQI5g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 50365800D62;
	Thu, 19 Nov 2020 12:46:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98B5919C47;
	Thu, 19 Nov 2020 12:46:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 02A0F4A7C6;
	Thu, 19 Nov 2020 12:46:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0AJCk5xg027823 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Nov 2020 07:46:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 446952026D12; Thu, 19 Nov 2020 12:46:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3FE7A2026D76
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 12:46:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE254811E76
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 12:46:02 +0000 (UTC)
Received: from mx2.simplelogin.co (mx2.simplelogin.co [94.237.125.28])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-587-zJNVxEmjPPKjzfihzb_V7Q-1; Thu, 19 Nov 2020 07:45:59 -0500
X-MC-Unique: zJNVxEmjPPKjzfihzb_V7Q-1
X-SimpleLogin-Client-IP: 94.237.86.150
Received: from [172.17.0.9] (mx1.simplelogin.co [94.237.86.150])
	by mx2.simplelogin.co (Postfix) with ESMTP id 2E0995DB26
	for <blinux-list@redhat.com>; Thu, 19 Nov 2020 12:37:51 +0000 (UTC)
Subject: Re: commands for installing all the English female RH voices?
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <160578947093.6.7388310134801475048.1842608@slmail.me>
Date: Thu, 19 Nov 2020 12:37:50 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-Mailbox-ID: 9379
X-SimpleLogin-EmailLog-ID: 1842608
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksClRoYW5rcywgdGhhdCBjb21tYW5kIHdvcmtlZCBhbmQgaXRzIHNob3dpbmcgbWUgdGhlIG9w
dGlvbnMuCk5vdyBmb3IgYSB2ZXJ5IG5ld2JpZWlzaCBxdWVzdGlvbiwgaG93IGRvIEkgc2Nyb2xs
IHRocm91Z2ggdGhlIG9wdGlvbnMgYW5kIHNlbGVjdCB3aGF0IEkgd2FudCBpbiB0aGUgdGVybWlu
YWw/ClNvIGZhcsKgIHdpdGggdXBkYXRlcyBhbmQgaW5zdGFsbGF0aW9ucyBhbmQgdGhlIGxpa2Ug
SSBqdXN0IHByZXNzIFkgb3IgT0suIEkgaGF2bid0IGFjdHVhbGx5IGhhZCB0byBzZWxlY3QgYSBj
aG9pY2UgZnJvbSB3aXRoaW4gdGhlIHRlcm1pbmFsIHlldCwgYnV0IHRoaXMgaXMgYSBnb29kIG9w
cG9ydHVuaXR5IGZvciBtZSB0byBsZWFybiBob3cgdG8gZG8gdGhhdC4KSSBoZWFyZCBFU3BlYWsg
YXV0b21hdGljYWxseSBzdGFydCByZWFkaW5nIHRoZSBjaG9pY2VzIGJ1dCB3aGVuIEkgdXNlIHRo
ZSB1cCBhbmQgZG93biBhcnJvd3MgaXQgd29uJ3Qgc2Nyb2xsIHRocm91Z2ggdGhlIG9wdGlvbnMu
IEl0IGp1c3Qgc2hvd3Mgd2hhdCBJIHR5cGVkIGJ1dCBpdCB3b24ndCBuYXZpZ2F0ZSB0byB0aGUg
b3B0aW9ucyB0aGF0IEkgaGVhcmQgaXQgc3RhcnQgcmVhZGluZy4gCkkgdHJpZWQgZW50ZXJpbmcg
ZmxhdCByZXZpZXcgd2l0aCBjYXBzIGxvY2sgYW5kIFAgYnV0IHN0aWxsIGNhbid0IHJlYWxseSBu
YXZpZ2F0ZSB0aHJvdWdoIG15IG9wdGlvbnMgaW4gdGhlIHRlcm1pbmFsLgpJJ20gc3VyZSB0aGVy
ZSBpcyBhIHNpbXBsZSBrZXkgY29tYmluYXRpb24gdG8gYWxsb3cgdGVybWluYWwgbmF2aWdhdGlv
biwgSSBqdXN0IGRvbid0IGtub3cgd2hhdCBpdCBpcy4KSWYgc29tZW9uZSBjb3VsZCB0ZWxsIG1l
IHRoZSBrZXlzIGZvciBlbmFibGluZyBuYXZpZ2F0aW9uIGZyb20gd2l0aGluIHRoZSB0ZXJtaW5h
bCB0aGF0IHdvdWxkIGJlIGdyZWF0LgpUaGFua3MsClNMCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdA==

