Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id BD43234F3DD
	for <lists+blinux-list@lfdr.de>; Tue, 30 Mar 2021 23:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617141598;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3DCgkHF8RuNoKasmhgkOXbExycNiJhNg4P9urfq3W6g=;
	b=Sa/FtcTSfL/cckXmNbgkTTl2422XMevhMo4vr7YMFSLvNrNAs6SKSDRdkp3eRR1kfnsBk/
	c9xZYg8j7F8YYyHwfwRTwdgCKNezbiFYe2YXyeR41JU/+LQxUKtmIdgqkZE1zTph2AGxFp
	yl18vAiYRoS7PnjoB1J4gxo0nYkY8ic=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-558-O9HMgZDcPPSqIjmoF9ZtDQ-1; Tue, 30 Mar 2021 17:59:57 -0400
X-MC-Unique: O9HMgZDcPPSqIjmoF9ZtDQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 65380107ACCA;
	Tue, 30 Mar 2021 21:59:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C00A41B5FF;
	Tue, 30 Mar 2021 21:59:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 83F5018095C9;
	Tue, 30 Mar 2021 21:59:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12ULxFk7007204 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Mar 2021 17:59:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D7CA12166B2D; Tue, 30 Mar 2021 21:59:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D190A2166B44
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 21:59:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 094BE811E9B
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 21:59:13 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-545-RKAsFqMsMSu_x2Ov261XZw-1;
	Tue, 30 Mar 2021 17:59:09 -0400
X-MC-Unique: RKAsFqMsMSu_x2Ov261XZw-1
Received: from darkstar.example.slint (sfa89-1-78-208-157-71.fbx.proxad.net
	[78.208.157.71])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 42CCDA1CCB;
	Tue, 30 Mar 2021 22:59:05 +0200 (CEST)
Subject: Re: dosemu 1.x is deprecated in favor of dosemu2.x
To: slint@freelists.org
References: <alpine.NEB.2.23.451.2103301720550.8687@panix1.panix.com>
Message-ID: <26dcd457-fb79-3b31-0c7c-5a7872285b27@slint.fr>
Date: Wed, 31 Mar 2021 00:59:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2103301720550.8687@panix1.panix.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12ULxFk7007204
X-loop: blinux-list@redhat.com
Cc: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSnVkZSwKCkknbSBzb3JyeSwgYnVpbGRpbmcgZG9zZW11Mi54IGlzIG5vdCBzaW1wbGUgYW5k
IEkgd29uJ3QgaGF2ZSB0aGUgdGltZQp0byBkbyB0aGF0IHNvb24uCgpBcyB5b3UgcnVuIHNldmVy
YWwgZGlzdHJpYnV0aW9ucywgbWF5YmUgdHJ5IGRvc2VtdTIueCBvbiBhbm90aGVyIG9uZT8KClBT
IEFjY29yZGluZyB0byByZXBvbG9neSBvbmx5IEFyY2hzIHByb3ZpZGUgYSBidWlsZCBzY3JpcHQg
aW4gdGhlIEFVUjoKaHR0cHM6Ly9hdXIuYXJjaGxpbnV4Lm9yZy9wYWNrYWdlcy9kb3NlbXUyLWdp
dC8KCkdvb2QgbHVjay4KCkNoZWVycywKRGlkaWVyCi0tCkRpZGllciBTcGFpZXIKU2xpbnQgbWFp
bnRhaW5lcgoKTGUgMzAvMDMvMjAyMSDDoCAyMzoyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwg
ZGlzY3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEkganVzdCBsZWFybmVkIHRoaXMgdG9kYXkgYW5kIHNs
aW50IG5lZWRzIGEgbW9yZSB1cC10by1kYXRlIGZsdWlkc3ludGggCj4gcGFja2FnZSBhbmQgSSBo
YXZlbid0IHN0YXJ0ZWQgbG9va2luZyBmb3Igc291bmQgZm9udHMgdGhvdWdoIHRoZXknbGwgCj4g
cHJvYmFibHkgYmUgb24gc2xhY2t3YXJlIGluIG1haW4gb3Igc2xhY2tidWlsZHMgcmVwb3NpdG9y
aWVzLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

