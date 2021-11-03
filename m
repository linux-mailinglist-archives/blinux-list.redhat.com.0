Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E79C443BD3
	for <lists+blinux-list@lfdr.de>; Wed,  3 Nov 2021 04:21:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635909688;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=v0svNhrQLRXWonOA08JPBjLq+STfqGdJNcLlRVRoSVs=;
	b=gm6Dw/CZf0jsVju82f+iSUNyHBihq0jggVxaenZGVxhMfG1lZWnEdDyyJ1snHyTQESxUX+
	JSKQgNIOXjnq4S/u6CF7dhx8YNp0IOFbPYiefBYZwXaroMf3aRQyG32apGIkRhiDgZvrIZ
	aQhvmH/X0d4x0BxFuXvxEkNQVi1YvxY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-cCuZYrK1PnWgyt2YVHFuQQ-1; Tue, 02 Nov 2021 23:21:24 -0400
X-MC-Unique: cCuZYrK1PnWgyt2YVHFuQQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 731931006AA3;
	Wed,  3 Nov 2021 03:21:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 10E515D6B1;
	Wed,  3 Nov 2021 03:21:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12CE54A703;
	Wed,  3 Nov 2021 03:21:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A33Kv9J029869 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 2 Nov 2021 23:20:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 09D222026D65; Wed,  3 Nov 2021 03:20:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04DC22026D5D
	for <blinux-list@redhat.com>; Wed,  3 Nov 2021 03:20:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B0491857F00
	for <blinux-list@redhat.com>; Wed,  3 Nov 2021 03:20:54 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-502-522c0Qw_OyClh27ZaLZd8Q-1; Tue, 02 Nov 2021 23:20:52 -0400
X-MC-Unique: 522c0Qw_OyClh27ZaLZd8Q-1
Received: by mail-qk1-f176.google.com with SMTP id r8so1068684qkp.4
	for <blinux-list@redhat.com>; Tue, 02 Nov 2021 20:20:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=nQJQVnc+5HSPOJsqxI+Etcsrs7F1nfSUNJZuDjvXV9c=;
	b=mWghkolQKmLfPbrvPZC7NzO0X/dQmUTGG7Zyqx7Zr9scKn86hI7+7Sm/2mpNiGIRV2
	1swzH5YyKoO3DP98nNYVonXxAfwLtDcAkZ9Gd9oPcshf9N8nDP9ZQdPBPZOqTAvycYEI
	fqUl1f1lnJXDeLSvhXYpEJzzBEKB2UdJp5lireCiOv62WTW+V54wddK/qGJYEbJMSI4+
	bCK8191Fs9B6Vc2pJB/qKuznrkAXwDFxC4coiO0EgEnXl2vomMFMwuResh0/OWjunmJZ
	8GJ40nJDCkDu7LMilhpOnxMx1jIKssDWJJIpTB3RuUFZiNuJuTpoLeQaZSK8ykw/Nrrd
	NixA==
X-Gm-Message-State: AOAM532eeBUM8bA7hrr0XlSh7A9bl2bOoIsXLfNtEuMHkgLqu8fQyPJN
	WrUzy3iD77mI2BKLCRY8Bte/MR81XUdwsw==
X-Google-Smtp-Source: ABdhPJwCM5qOSmdv0B+a+Eh2bDZmlzWoUFDImNgTiKQyLdeD1p4+Zc4uT7gu/FWqlvwoBWQZ4+pheg==
X-Received: by 2002:a37:4647:: with SMTP id t68mr32239507qka.70.1635909651615; 
	Tue, 02 Nov 2021 20:20:51 -0700 (PDT)
Received: from darkstar.example.slint ([2601:152:4000:330::c])
	by smtp.gmail.com with ESMTPSA id e14sm720776qty.59.2021.11.02.20.20.51
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 02 Nov 2021 20:20:51 -0700 (PDT)
To: blinux-list@redhat.com
Subject: How do you switch between keyboards on linux?
Message-ID: <cb461a98-3688-ee91-7627-88e772fae4d9@gmail.com>
Date: Tue, 2 Nov 2021 23:20:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Helllo Folks,

I am a new user of linux. I have been experimenting with several 
distributions of linux for few days. I am a multi-lingual person and 
therefore I need more than just one key board on my linux. I found it 
easy to add a key board, but I could not figure out how to switch 
between the two or three keyboards I have installed.

Is there a standard shortcut to switch among the verious keyboards the 
user adds to his/her keyboards list? In windows I use the left-alt Plus 
shift and that allows me to circle between the keyboards.

I appreciate your help.

Cheers,

Ibrahim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

