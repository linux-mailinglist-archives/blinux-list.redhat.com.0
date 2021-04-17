Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 300D7363068
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 15:41:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618666887;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Co/jEYRRvOE6H3+5ABTjBBE8v5hLAnO4KOxWL4BL/I8=;
	b=GfirbPXaQ+tvtCPFhGxS+wRu5bBY3XjJ8m0PUStNGZUtv6uZ8bxSZ1lgGGgAD9hB4+2g6O
	x1pqb6I3mt87UGHJ7wDCr3dwDoN3oS7M0uombl8HB3B7x3SYbprgqWpmh4GaDNVaITiriF
	BTslBp5WNzj8YvEOiLOc1q4ozlwuG2M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-wb-ubOq6MBei92sLnzKUSg-1; Sat, 17 Apr 2021 09:41:25 -0400
X-MC-Unique: wb-ubOq6MBei92sLnzKUSg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5B87D87A826;
	Sat, 17 Apr 2021 13:41:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FD625C6B8;
	Sat, 17 Apr 2021 13:41:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC8B844A5E;
	Sat, 17 Apr 2021 13:41:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HDdrWD014271 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 09:39:53 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0278647CF1; Sat, 17 Apr 2021 13:39:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F0EA947CEA
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 13:39:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 57EE6101A52C
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 13:39:50 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
	[209.85.219.42]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-76-QoF8nW7UNBmTg8UvJUnAMQ-1; Sat, 17 Apr 2021 09:39:48 -0400
X-MC-Unique: QoF8nW7UNBmTg8UvJUnAMQ-1
Received: by mail-qv1-f42.google.com with SMTP id dp18so10177673qvb.5
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 06:39:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:user-agent
	:mime-version;
	bh=bqLZRVRN7hYGX80zI4GrTOVyMb4+EbDefj6LHRITBZk=;
	b=YJfpD04rBVt62e7EqzHCnKfraabbP54mqGjwrISauNnHTWeLqmOH0WqqI31KV8K3/U
	H3KUpX8uNubSMKu7DxoyjVif3mMWiAKPm/VZMl4xiAaLRdf/pFu6KuIj7R669bznB+sc
	RWo88oiNIkEWvTYoMRoLwC6zFHD17cB0/4gZb/Xesp+pUVsdh1XhY+8r8mp3ZpYwLmP3
	CQhtGOwmM6FOcFIzaDFSVQw3gU0AVT88/KiiPReI0C4LvPf2NUFWB4NbukYtD7pb1Gao
	LG7ur/aAhhuoSPJAW0rIF43Lge5u9g+X6XfUS5JMu5AQc9zaRdoDRUit20+6kPNWjFBI
	G36w==
X-Gm-Message-State: AOAM530DASkyUoJzhbHU42//tMBdjRH6xMpiYGFpBK37dbq5h/v0q/na
	kk7pDFbyDv1E7zwx8YXhRGuVye6sep8=
X-Google-Smtp-Source: ABdhPJwZgsjxSejeQM2Oju+J8Nvm+nfFDJTGzhci10EJi/SaZ0/qbj1/a4J2wjuoMo+soyDlzSaLNA==
X-Received: by 2002:a0c:d786:: with SMTP id z6mr12501172qvi.18.1618666787435; 
	Sat, 17 Apr 2021 06:39:47 -0700 (PDT)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id z6sm6149977qkc.73.2021.04.17.06.39.46
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 17 Apr 2021 06:39:46 -0700 (PDT)
Date: Sat, 17 Apr 2021 09:39:44 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Formatting - was Would you be interested in having natural sounding
	TTS voices by Readspeaker on Linux? demo link included
Message-ID: <alpine.OSX.2.23.453.2104170933010.2805@dans-mac-mini-2.home>
User-Agent: Alpine 2.23 (OSX 453 2020-06-18)
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


The original formatting was fine here too.  I suspect the email client and its configuration for text handling is a factor.  I'm using alpine.

> For what it's worth, I didn't notice anything off with the original
> message's formatting...
>
> As for the question, I'm quite content with espeak-ng's default voice
> and consider it higher quality than the more natural sounding voices
> I've heard, many of which I feel fall into the Uncanny Valley if used
> to read anything longer than a single sentence...
>
> That said, more choice is generally a good thing.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

