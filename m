Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7386CB2B6
	for <lists+blinux-list@lfdr.de>; Tue, 28 Mar 2023 02:00:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1679961611;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mgI+4oypJY4hkvvLfC6hVsfFfqLMWsvaVAfJ5sEMRnk=;
	b=at2NvOJPejN6mmsfgtGK1QI5fLzl0tkuj0MWp8SoN/2kfpzPjzHBN/e1XY82NGA0qn34Vk
	QuaThBerAcV/pytIFs8zryyjsXZul9vfhR+Ahdd6IkLmpqGvAjUjlTXOFaJvL3WJpmdFfg
	VwWfp49G/0bqqRnMMyMTdf1aWGwsPoo=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-329-WWkJ6q5yPUiLS08Nk1ewVA-1; Mon, 27 Mar 2023 20:00:09 -0400
X-MC-Unique: WWkJ6q5yPUiLS08Nk1ewVA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B7253185A7A8;
	Tue, 28 Mar 2023 00:00:07 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 642D743FBD;
	Tue, 28 Mar 2023 00:00:03 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5BD1A19465B5;
	Tue, 28 Mar 2023 00:00:02 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 27 Mar 2023 19:59:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Looking for a Good Way of Dealing with Accidently Deleted Files?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.208.1679843643.2676487.blinux-list@redhat.com>
 <mailman.420.1679919340.2676483.blinux-list@redhat.com>
In-Reply-To: <mailman.420.1679919340.2676483.blinux-list@redhat.com>
Message-ID: <mailman.556.1679961602.2676482.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

PiBhbGlhcyBybT0icm0gLWkiCgoKQWxsIHRoYXQgcmVhbGx5IGRvZXMgaXMgYXNrIGFuIGludGVy
bWVkaWF0ZSBxdWVzdGlvbiB0aGF0IHlvdSBldmVudHVhbGx5IApnZXQgdXNlZCB0byBqdXN0IHNh
eWluZyB5ZXMgdG8sIGFuZCB5b3VyIGZpbGVzIHN0aWxsIGdldCBkZWxldGVkLiBBIApiZXR0ZXIg
c29sdXRpb24gbWF5IGJlIHNvbWV0aGluZyBtb3JlIGxpa2UKCgpybSAoKSBbCgogwqAgbXYgJEAg
JEhPTUUvLlRyYXNoCgp9CgoKT3Igc2ltaWxhci4gT2YgY291cnNlIHlvdSB3aWxsIHdhbnQgYW5v
dGhlciBmdW5jdGlvbiB0byBlbXB0eSB0aGUgdHJhc2gsIApvciB1c2UgYSBzeXN0ZW1kIHRpbWVy
IG9yIGNyb24gam9iIHRoYXQgZW1wdGllcyB0aGUgdHJhc2ggbWF5YmUgb25jZSBhIApkYXkgb3Ig
c28uIEl0J3MganVzdCB0aGF0IEkgaGF2ZSBmb3VuZCBteXNlbGYgaW4gbXkgb3duIGJyYW5kIG9m
IGhlbGwgCmJlY2F1c2Ugb2YgdGhlICJBcmUgeW91IHN1cmUiIHF1ZXN0aW9ucyB0aGF0IEkgYW5z
d2VyIGF1dG9tYXRpY2FsbHkuCgp+S3lsZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJl
ZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAo=

