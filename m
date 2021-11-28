Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6A94609D9
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 21:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638132856;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uMVKYgDkPfwgksQYnrmPsV9s6ubH+P8Ji4oAKzVsNmc=;
	b=WLIwc7ZXQWbpyOCb828uR2MrIc5QwCJD4UigwYm/s0XFPzj3F4IYwSInliFcXmjSxV51wf
	iYB+lnHsiboVfKyqFkZAgFdYG5xLUdKkCrhcix5DDFnKZ758y3XgUgZpm9EVNbpdW4WGzh
	WQWATB3UFafEWIX4k5v7JGkiu+h+U74=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-121-t0qujbuHPECpNtYEJxz_cQ-1; Sun, 28 Nov 2021 15:54:13 -0500
X-MC-Unique: t0qujbuHPECpNtYEJxz_cQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0F081006AA8;
	Sun, 28 Nov 2021 20:54:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 899075C23A;
	Sun, 28 Nov 2021 20:54:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D26D01809C89;
	Sun, 28 Nov 2021 20:54:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ASKs1RU021476 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 28 Nov 2021 15:54:01 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7A179C23DB6; Sun, 28 Nov 2021 20:54:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75A21C23DB5
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:54:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5EC72802802
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 20:54:01 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-569-2mTlc9Z4PJC7DtwQvzdLvQ-1;
	Sun, 28 Nov 2021 15:53:59 -0500
X-MC-Unique: 2mTlc9Z4PJC7DtwQvzdLvQ-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 0E7BEA3EDB
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 19:53:17 +0100 (CET)
Message-ID: <5f7afed8-98cf-d073-1719-9915881777ad@slint.fr>
Date: Sun, 28 Nov 2021 21:53:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: pipe-viewer downloading w/yt-dlp possible?
To: blinux-list@redhat.com
References: <5d1e874b-076d-ebce-c83c-c103d7d7f2f0@gmail.com>
In-Reply-To: <5d1e874b-076d-ebce-c83c-c103d7d7f2f0@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1ASKs1RU021476
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

SSBob3BlIHRoYXQncyBwb3NzaWJsZS4gSSB3aWxsIGNoZWNrLgoKQ2hlZXJzLApEaWRpZXIKCkxl
IDI4LzExLzIwMjEgw6AgMjE6NDEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24g
YSDDqWNyaXTCoDoKPiBTby4uLmhvIHdvdWxkIEkgZG93bmxvYWQgd2l0aCB5dC1kbHAgdmlhIHBp
cGUtdmlld2VyPwo+IAo+IFNvIGlmIEknbSBpbiB0aGUgdGVybWluYWwsIG9yIGluIG15IGNhc2Ug
c29sZWx5IGEgQ0xJIGluc3RhbGwpLiBTbyBjYW4gSSAKPiBkb3dubG9hZCB2aWEgcGlwZS12aWV3
ZXI/Cj4gCj4gSSdtIG5vdCBzZWVpbmcgYSBkb3dubG9hZCBvcHRpb24gaG93ZXZlciwgc28gaXMg
dGhlcmUgb25lIHRoYXQncyBoaWRpbmcgCj4gaW4gdGhlcmU/CgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

