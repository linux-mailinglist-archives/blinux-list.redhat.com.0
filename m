Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AB08C44FB9D
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 21:40:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636922411;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=790qmWMNmjd1dmMNU25nCnLKOr1mEkls3mlp+mPWCno=;
	b=GRtvuH7jKILPzNxc+LHvuldHW/xPmtdf95odSlAZcSVF8ZUwt9vD5rNrWCwYGOVf1JySmn
	p1+ii8tBOGEx6nh4Gw7KxWjSN3RtvgZtpxN5CPxkOjxU5PTpzPdIuWgEwoSBvUsx3UW1hT
	Vj6930UUIDUShQl97Ey9vERBn94QAuw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-255-Y2oOmRJEN3WK3h4ZFXE7Og-1; Sun, 14 Nov 2021 15:40:07 -0500
X-MC-Unique: Y2oOmRJEN3WK3h4ZFXE7Og-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 024A31030C21;
	Sun, 14 Nov 2021 20:40:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 405C4101E693;
	Sun, 14 Nov 2021 20:40:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C229218199EE;
	Sun, 14 Nov 2021 20:39:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AEKds7c026330 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 15:39:54 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A9803404727A; Sun, 14 Nov 2021 20:39:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A503F4047272
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 20:39:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E722E85A5A8
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 20:39:53 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-139-ZVH-7oKIMF-hR3jqlF8ueQ-1; Sun, 14 Nov 2021 15:39:52 -0500
X-MC-Unique: ZVH-7oKIMF-hR3jqlF8ueQ-1
Received: by mail-qk1-f178.google.com with SMTP id j63so10358969qkd.2
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 12:39:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:from:to:references:in-reply-to
	:content-transfer-encoding;
	bh=0ZrAbCrt0b/9XJazOgxAVPqVrs4f/6VrWNgIw0Bi5mM=;
	b=XoVGS+pg90WF4x+dR81Nr7Q+gRDhcJJwZVOrMLvnwD0HuvbRuT96rjT4vRi8SsU4M4
	DmZd9lvwNZz4or04+gzGvppQ6ln6jcNrxXVY/9rWZVnL1l0VMx0eaDUwQgQmKAf9ZuUc
	R4NncN6eYb8AH+tIQCRrLZlJw/jL1QvbkulJ8C628hPE9/FGHBk7w2py9GGNAQ5z4Py8
	sr0zEUW98XS9b4Lya/CqRNJtlbFYOrJ3J6tEUVRUZPxuDoPe52tIHgqHKBfJCRdwJ9XO
	Ar2HOZgYOfJnSLZHFNx8T8p9kGglywMicYcJcHJwV677woAcgvxg2mRQQhIJ4ppVYquJ
	Akgw==
X-Gm-Message-State: AOAM533Hnv6byD5m7SwYl5TR7ucEgzeyG7OVS2aygJX7hf64FRLnNatP
	/A17dy+pqeAW3owF0GAfkJjRoBvdyxg=
X-Google-Smtp-Source: ABdhPJwpXcMaC6QEkk+sTlROYCgUqkffEKbxYROAnEZbarD9LQtXHB4p9T2ssboyfjS1ay/OJl40IQ==
X-Received: by 2002:ae9:e003:: with SMTP id m3mr14111389qkk.335.1636922391497; 
	Sun, 14 Nov 2021 12:39:51 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	p16sm6750001qtx.92.2021.11.14.12.39.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 12:39:51 -0800 (PST)
Message-ID: <df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
Date: Sun, 14 Nov 2021 15:39:50 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: any other accessible email client for linux?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
In-Reply-To: <b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Looking at alpine, the first thing I noticed is that I can set an inbox 
path and an smtp server, but I can't seem to set an imap server, and I 
couldn't immediately find the encryption, port and authentication 
settings even for smtp. I really do like the menu interface, most of it 
with single-key mnemonic functions, but there's just too much here that 
I can't seem to figure out, like how to set up imap email, although I do 
know that it's possible. Problem is even reading the man page isn't 
helping me get through all the config options, and only my page-up, 
page-down, home and end keys are navigating through the configurations, 
making it difficult to set a single option, and I don't see any show 
cursor or similar command line option that will allow my screen reader 
to speak the configuration I would be setting. Unfortunately, even the 
most inaccessible desktop email applications make it easy enough to set 
up a mailbox using imap and smtp settings, complete with 
security/encryption and authentication. I think what I'm looking for is 
some kind of "setup new mailbox" menu selection, but I don't immediately 
see that. It seems it looks good for local mail, but I'm not finding any 
remote mailbox setup. I did see message threading options, which 
definitely helps with that issue, but remote mailbox configuration 
definitely needs to be easier to do right from the setup menu or the 
main screen that I see when I open alpine.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

