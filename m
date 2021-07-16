Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7A40B3CBA08
	for <lists+blinux-list@lfdr.de>; Fri, 16 Jul 2021 17:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626450162;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9AilBlhGk3aMhh3tDqDwrD8mggAqNFQu7JjlXCrKUK8=;
	b=RZSJsBSVmjHxUk8xrRv8TIMULT4Fioi3UuR9PfdnRajMmAdQ9r8R8PBTi2dGLGRS2bplh9
	8mcFC47Y4bzGrr+83d5QlqGF4Q4VWOLPqWP84wAVXscfBffssWWkIzxHQoLq6GxPHisnpX
	ZUPxlTJEoNEt56BqhnoLodqy7o0tAMc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-493-xdZjyk1DPC2bLVHkHZJGyg-1; Fri, 16 Jul 2021 11:42:41 -0400
X-MC-Unique: xdZjyk1DPC2bLVHkHZJGyg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08E5E802E67;
	Fri, 16 Jul 2021 15:42:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9B17604CC;
	Fri, 16 Jul 2021 15:42:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4A02A1801254;
	Fri, 16 Jul 2021 15:42:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16GFg8Wh002557 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Jul 2021 11:42:08 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C3039115DE2; Fri, 16 Jul 2021 15:42:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BDAF5116723
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 15:42:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE4EA800BED
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 15:42:05 +0000 (UTC)
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
	[209.85.166.173]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-105-2j1JHvIEPRy8lLajS92hhg-1; Fri, 16 Jul 2021 11:42:03 -0400
X-MC-Unique: 2j1JHvIEPRy8lLajS92hhg-1
Received: by mail-il1-f173.google.com with SMTP id s5so1656240ild.5
	for <blinux-list@redhat.com>; Fri, 16 Jul 2021 08:42:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=Z7IeL2a8TKZ2r00Oqs1ourzmG99AsBVbdZhBBGJgMj4=;
	b=YQ5lXvCdNebAgKNt9JXd/uCBOPs5v2hXoMRHUWRvb9IR/CriMZcDzoAPE1LSWhRQ5g
	V2/S5jeJOclHIk48/4PsKZlookUfAAuwj5H/o2imnyKcvsp6kb1JB6e0mjFPv/ZQ6JEM
	6BIDAlUWJ2aSF4yhHJPDex9665oAv7ko9t5I75T0oLh4SwVlePUw5GRt1+0LqAnGvPCt
	cvPE1HFlMDsohNFBQLbBRF8c/zdZsZhlz+Hzik49JG0Adt7PdmKtv5HbypFMqR86B6rA
	ETrC9pgXlmBSZjQNiWyvXf39j3BODYf8msxSBjOhfWJiIvS5oTi/APWlZhK7wvVcpIrM
	L7Gw==
X-Gm-Message-State: AOAM530bhtf9Z4jYE8RrWIjdVEIYEZ/HW0nJoK/c7dIWeHjJyXJ1NUSS
	JRDIAuEJtRWkVFJdIaxNHhDa87djhak=
X-Google-Smtp-Source: ABdhPJzC1W7yzlMlj30W5bPK6CDPtI04XXwnLhcyjs4HxC1yR8jSF0Di0OG6fQdv7rV4hwKaqQKapw==
X-Received: by 2002:a92:b741:: with SMTP id c1mr7007566ilm.220.1626450122220; 
	Fri, 16 Jul 2021 08:42:02 -0700 (PDT)
Received: from smtpclient.apple ([204.29.85.5])
	by smtp.gmail.com with ESMTPSA id
	u13sm5131557iot.29.2021.07.16.08.42.01 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Jul 2021 08:42:01 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3681.0.2.1.2\))
Subject: Re: Fedora pros and cons
Date: Fri, 16 Jul 2021 10:42:00 -0500
References: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <A695764A-F89A-40E5-9257-71562EC3A89C@gmail.com>
Message-Id: <C2911657-E880-4797-8B75-5666425CEE15@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2l0aCBGZWRvcmEsIHlvdSBhdCBsZWFzdCBrbm93IHRoYXQgdGhlIE1hdGUgaW5zdGFsbGVyIGlz
IGFjY2Vzc2libGUuIFVidW50dSBNYXRl4oCZcyBpbnN0YWxsZXIgaXNu4oCZdCBhY2Nlc3NpYmxl
LCB3aXRoIHRoZSBsYXRlc3QgMjAuMTAgcmVsZWFzZS4gRmVkb3Jh4oCZcyBNYXRlIHNwaW4sIHdo
aWNoIEkganVzdCBpbnN0YWxsZWQgdG9kYXksICppcyogYWNjZXNzaWJsZS4gWW91IHN0aWxsIGhh
dmUgdG8gZW5hYmxlIEFzc2lzdGl2ZSBUZWNobm9sb2d5IHN1cHBvcnQsIGFuZCB0dXJuIG9uIE9y
Y2EsIGFuZCBzZXQgYSBrZXlib2FyZCBjb21tYW5kIGZvciBPcmNhLCBidXQgdGhhdOKAmXMgbm90
IHRvbyBoYXJkIHRvIGRvLgpEZXZpbiBQcmF0ZXIKci5kLnQucHJhdGVyQGdtYWlsLmNvbQoKSHR0
cHM6Ly9kZXZpbnByYXRlci5mbG91bmRlci5vbmxpbmUKCj4gT24gSnVsIDE2LCAyMDIxLCBhdCAx
MDoyOSBBTSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RA
cmVkaGF0LmNvbT4gd3JvdGU6Cj4gCj4gSGVsbG8sIEkgYW0gaW50ZXJlc3RlZCBpbiBhZHZhbnRh
Z2VzIGFuZCBkaXNhZHZhbnRhZ2VzIG9mIEZlZG9yYSB2cyBVYnVudHUtYmFzZWQgbGludXguCj4g
Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

