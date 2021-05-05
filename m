Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4D48E37360F
	for <lists+blinux-list@lfdr.de>; Wed,  5 May 2021 10:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1620202085;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i2IgMfPk55QmDvA6Iq9ek2x+t0ZJSEwVHBrcqUJ5tQg=;
	b=XGurEWunFNYQYE7pOAlYi4CtRHJeqiS87xxzyr2iQn7HpEONpijMHyMAVEED6vziH03mgb
	Zqr3cimWRgO59hVdSU1KFPpPKl55rYanxCrfzNNtAcpOvjBVvrZaWY1SRnsiCcLZVY9ydh
	7uyGYc++0RL/Ldmvmhyx+ceiv4jLcv4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-56-JztRicg5N32a8dXpRzuSUQ-1; Wed, 05 May 2021 04:08:03 -0400
X-MC-Unique: JztRicg5N32a8dXpRzuSUQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8AB701922035;
	Wed,  5 May 2021 08:07:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8BAB359465;
	Wed,  5 May 2021 08:07:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C252A1800BB0;
	Wed,  5 May 2021 08:07:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14587eMA008459 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 5 May 2021 04:07:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CE7DD2051B02; Wed,  5 May 2021 08:07:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9C612038A18
	for <blinux-list@redhat.com>; Wed,  5 May 2021 08:07:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 061B31857F23
	for <blinux-list@redhat.com>; Wed,  5 May 2021 08:07:36 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-375-Xf3EqsaKN_a9ilwIQ4IimA-1; Wed, 05 May 2021 04:07:33 -0400
X-MC-Unique: Xf3EqsaKN_a9ilwIQ4IimA-1
Received: by mail-wr1-f47.google.com with SMTP id l2so764309wrm.9
	for <blinux-list@redhat.com>; Wed, 05 May 2021 01:07:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=aWfxkPytv606QhFXqoNoF50cfYItw+Nw/5aHptLRXQc=;
	b=PNHsWI1naGNHR/pFEejT2wCA10NpdBZOZZZS8t7nZwFjflG064AfPZ7RYByuBSC/eP
	+hEsQLZUSQa9RcRrEde1F6BeDGPlZwjflJp7Vnk1y1xGxd8T7UMQT+BT5NoHKkLn4sJS
	90xeBXpwbYiN5dZOD8zDOhGN1RlVfE2VDPx3XJAhTd4LvWmjA29uA/SnSneUNxDcllQy
	T16ebxzuVAcS6hQ2EUlkarorq8CWguxhKww6CLWKkqXu3j3bQrhjxbXdmjfpOFV214OH
	8Er11s3nERw08S5fVvLXcbPEuZ85AVgOMKl/D2Rw9KU63xJ4err4KOBuC1mfciHH9ANL
	FA2A==
X-Gm-Message-State: AOAM5309RGnHr8G7a71r248ptOcZtgODfNR6MN2gghgmR3MLitC7JZlh
	Msu/0zzsz/+SPdtAS/Dgs1yDaEIcmuY=
X-Google-Smtp-Source: ABdhPJySql8+YpH2Bly0lyQWyDIxVhRuruo4h4uvu1uUrgp0+Xeh+rwyTWI3aAowPVVy25QkNGWDOA==
X-Received: by 2002:a5d:4acd:: with SMTP id y13mr36089907wrs.185.1620202052474;
	Wed, 05 May 2021 01:07:32 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id
	z7sm18681017wrl.11.2021.05.05.01.07.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 05 May 2021 01:07:31 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Discord issues w.r.t. verifying codes
Message-ID: <5c24c29e-03fd-6e8c-6b4b-547525d7276c@gmail.com>
Date: Wed, 5 May 2021 09:07:31 +0100
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

I'm currently stuck very much on this. I got told by support oh you're 
doing something wrong. So I'll humor them a tiny tiny bit.

Anyone have experience with Discord and putting in verification codes? 
I'm quite literally unable to on Chrome/Chromium/Brave/official 
client/Firefox/insert your browser of choice here. The support 
is......less than helpful at this point, just auto marking tickets as 
solved when they are not

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

