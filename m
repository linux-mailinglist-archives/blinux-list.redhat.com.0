Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 789853FA10A
	for <lists+blinux-list@lfdr.de>; Fri, 27 Aug 2021 23:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630099006;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FTt1xd3mvBcnX+6/IIth5iVxFNmzz3kN/1eYAjosbXU=;
	b=J0HVFUGpXVTtmkfS0GAQgzOKvq3kLSf6MvYPxvQEjbBqzUEXjhw5aldnM5f8rNze6h5h8W
	AnduXVl4qEE3zGBb5zK/IRnsGWpEDMtaNzJQJ4NHn9MPsSTM5SbtKOtY3Nhpd2TAn29Ya1
	v9dxmPm+jZHNaqrsUjaf1pP7hxyfuBo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-205-AbDEbdPBNfa7KeeaXqRsLA-1; Fri, 27 Aug 2021 17:16:44 -0400
X-MC-Unique: AbDEbdPBNfa7KeeaXqRsLA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0D8B41082926;
	Fri, 27 Aug 2021 21:16:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7F5634180;
	Fri, 27 Aug 2021 21:16:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 607CA181A0F1;
	Fri, 27 Aug 2021 21:16:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17RLDgoV028104 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 17:13:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 68AED10BBCC8; Fri, 27 Aug 2021 21:13:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64B5210BBCC4
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 21:13:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B211F185A79C
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 21:13:39 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com
	[209.85.218.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-564-rGzBhp7aPjO9EYuHnmMLqQ-1; Fri, 27 Aug 2021 17:13:37 -0400
X-MC-Unique: rGzBhp7aPjO9EYuHnmMLqQ-1
Received: by mail-ej1-f51.google.com with SMTP id h9so16614914ejs.4
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 14:13:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Xn5QJQnElIXMA9V1JbRNxBqzBmX+0GmfFA1oCG6Jo1Y=;
	b=VBrezJf/sKMfxq7DzjkYSsY3ZAhOhuHwCVJmXnaMKtqXVz2l2NKBxcmDrG6BqOGmCW
	jma79kug63rjswoJjmK4mnEBhNNX9jLoosNJyYeCyqj2Nu8T1L7MVpKTeXPsut4VTC2S
	w4kx6cqGqABsIGdjMziEQGUVqdWafLeuSYMONejTY8CrtOcHUT5oRNeEgAwn51wRT10A
	EVitMRHbOX/8xmz0KWrnt11qn0RPKHGRLTLRZYTF2Nfxys8W83nGsk2xmsRtspe6uBkV
	dNIh8PGG7sdWehzJrpJbXuLFC8JRpCsyw7B3bQdo/I7LrX7si/RbSXik4ft2KC7Dw3sq
	0a4Q==
X-Gm-Message-State: AOAM530eEuKA7yw/IKEZXbVqamDTEkvB1la5/EHfxT6R4h0PeNDQ5OvL
	Dbfg/oITmfsF8YO5hBiRqNhXAfJCizE=
X-Google-Smtp-Source: ABdhPJw//eOUJntvR7lLWpX2MOcTBlx4NSkcJiVmNq4YtEHcBpmnIG97cP864swdLg++yl8J+xKWSQ==
X-Received: by 2002:a17:906:2cd5:: with SMTP id
	r21mr11769412ejr.435.1630098816121; 
	Fri, 27 Aug 2021 14:13:36 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id j14sm4097411edk.7.2021.08.27.14.13.35
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 27 Aug 2021 14:13:35 -0700 (PDT)
Subject: Re: unable to install from aur
To: blinux-list@redhat.com
References: <20210827.181429.958.4@[192.168.1.100]>
	<f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
	<20210827.191148.445.6@[192.168.1.100]>
	<94329dd7-51a8-3124-583b-508c431cafd8@gmail.com>
	<20210827.200251.396.9@[192.168.1.100]>
	<80cc3f79-c913-996c-b6c3-2f0be6579c82@gmail.com>
	<20210827.203346.863.10@[192.168.1.100]>
Message-ID: <c93e99c6-f132-46e6-1a17-94b7a1802274@gmail.com>
Date: Sat, 28 Aug 2021 00:13:34 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210827.203346.863.10@[192.168.1.100]>
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

MjcuMDguMjAyMSAyMzozMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C4
0YjQtdGCOgo+IE9rLCB0aGF0IGRpZCB3b3JrLgo+IEhvd2V2ZXIsIHNob3VsZG4ndCB0aGlzIGJl
IGhhbmRsZWQgYXVvdG1hZ2ljYWxseSBhbmQgbm90IGhhdmUgdG8gYmUgZG9uZSBldmVyeSB0aW1l
IEkgbmVlZCB0byBpbnN0YWxsIGEgcGFja2FnZSBmcm9tIGF1cj8KPgptYXliZSBpdCBzaG91bGQg
YmUgaGFuZGxlZCBieSB5b3VyIGF1ciBoZWxwZXIuIGJ1dCB3aGVuIGtleSBpc24ndCAKdXBsb2Fk
ZWQgdG8Ka2V5IHNlcnZlciB0aGVyZSBpcyBzaW1wbHkgbm8gcGxhY2UgdG8gZG93bmxvYWQgaXQu
CgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2Js
aW51eC1saXN0

