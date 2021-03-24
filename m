Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7A1A7347867
	for <lists+blinux-list@lfdr.de>; Wed, 24 Mar 2021 13:24:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616588677;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WT/ON8Z0n8bOPNhLis3J+cqtz2pQhZAmHGmG122e+lo=;
	b=GDxAUs8fRi44CRQAkKPfUcPN4dde3DVhDqrJIY4wzvhpEEwRfX35UFEIEx7YI6XRcmCOYw
	yl8q/iG8XNqFGLcoR6ZS4OatyNIJ77xS+ZQZBwaNycsKAMczXkIJUnwtnWzmg515ZqJAuf
	d6CdMLX/KtWm/X9kQdLiaJG+Fn4ZJI8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-299-8ND2BykZOa21jGUWN4ZbPQ-1; Wed, 24 Mar 2021 08:24:35 -0400
X-MC-Unique: 8ND2BykZOa21jGUWN4ZbPQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1AA0D87A83A;
	Wed, 24 Mar 2021 12:24:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 67FF363BA7;
	Wed, 24 Mar 2021 12:24:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E90314BB7B;
	Wed, 24 Mar 2021 12:24:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12OCOA3n005850 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Mar 2021 08:24:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7BC95101B55F; Wed, 24 Mar 2021 12:24:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 771F4114B309
	for <blinux-list@redhat.com>; Wed, 24 Mar 2021 12:24:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0C57081C964
	for <blinux-list@redhat.com>; Wed, 24 Mar 2021 12:24:08 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-264-02Z_wLopMFeNmYVpzCDYcA-1; Wed, 24 Mar 2021 08:24:05 -0400
X-MC-Unique: 02Z_wLopMFeNmYVpzCDYcA-1
Received: by mail-wr1-f44.google.com with SMTP id j7so24256050wrd.1
	for <blinux-list@redhat.com>; Wed, 24 Mar 2021 05:24:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Gifes1czNf/yGrOuN17ANZtLhBae690SZd49p/eJsnU=;
	b=o/238hil2ZkYB54V3fcYkLHwDuRmTNZS02yQijYpMUcMmNSxOgEm2+fL2K02J6RgG0
	rVudvTOlHvNtZ01LmUgJOET9NNVp4DLVupbTfb6s/OnpyPb/0TCC7OFjJURbsjMUl2BC
	F00Buv09CQk3heyYLcaAUcfUJIWyTaieklmNsdUG2F0EOUQArxIlRGjC/f/pZoNkj7Wc
	1fHH3MO2/dVwS2RltIKZrTZVSbQYerv10zG5Fe4/UDv1yyVXEBalfr3kwbu+B5P9G9AU
	61xyfGjXoy1hgiyLmYFFRPd+XqLwWvfABiyuUtMnpbj0eI/76jGx5KXgRpPEcnsC5pvF
	G3jA==
X-Gm-Message-State: AOAM530x1rfD6n+fCf6sUYD0xr5KFmhLQO6LSy6olaJCzrk4phDo+OQd
	nStiCOd7I6kwgkoQq2a2WPOEnJDrTp4=
X-Google-Smtp-Source: ABdhPJxY4tWcfem4ZFYoErPGy+HsJwF3fPOoYtVSimwgGmjuwF0749W5Jwz11cxIsPFJee2HrSIF1A==
X-Received: by 2002:a5d:55c4:: with SMTP id i4mr3292627wrw.84.1616588644555;
	Wed, 24 Mar 2021 05:24:04 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id
	x25sm2325453wmj.14.2021.03.24.05.23.48 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Mar 2021 05:23:53 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Solus is....sort of fixed?
Message-ID: <6b735c3d-70c1-4790-a047-29994772105d@gmail.com>
Date: Wed, 24 Mar 2021 12:23:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
MIME-Version: 1.0
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As the subject says, Solus 4.2 has a workable installer. I'm creeping 
back toward Solus because, more up to date packages than Ubuntu, but I'm 
just a bit confused by a few things.

Now. These may all be caused by having a weird VM setup, yeah, let me 
state that.

Brave installs fine, no messing with PPA or downloading files, which is 
a huge, huge plus for me. I've yet to test Skype or Discord, or try 
building Orca from git, but here's my few maybe VM issues...


Brave breaks the system a little. By that I mean, okay, Brave installs 
but it's not accessible despite claiming to be 89.X...even with the 
flags set properly. That may be down to my weird VM setup however.

On the other hand Solus is still as zippy as I remember it being on the 
Mate desktop. If I can get MPV and such installed I can nearly replicate 
my Ubuntu setup on Solus, minus all the added packages

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

