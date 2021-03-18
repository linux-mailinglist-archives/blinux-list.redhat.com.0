Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 3991C340857
	for <lists+blinux-list@lfdr.de>; Thu, 18 Mar 2021 16:02:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616079733;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pJHDSuN5N+MJuVC06kIPSE2LEYXnBMV800gdhVy94xg=;
	b=PBHF6JG4rh8rGLFsMxjoIsHewebzLhs1422fWLN2PSzNzjVXvLrEziOfEc8o4jj9LcXRAB
	KI6X1ofEMLHYw9LT0tEcXos3lXk1vhCiKxTKbUehs+3kE7ocJ69UCNMaVL7qa4omWXaiv9
	WtCiDFT/kzQWHvC997C9cjIxXpDkEdQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-561-DoDw_dsWOS6z6xZiIeQ5Iw-1; Thu, 18 Mar 2021 11:02:10 -0400
X-MC-Unique: DoDw_dsWOS6z6xZiIeQ5Iw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BE5B281629;
	Thu, 18 Mar 2021 15:02:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 064BB50A8D;
	Thu, 18 Mar 2021 15:02:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1E1C218095C9;
	Thu, 18 Mar 2021 15:01:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12IF1jKx013175 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 11:01:45 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 16981F8074; Thu, 18 Mar 2021 15:01:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DD27F8081
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 15:01:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4949280B91F
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 15:01:40 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-171-160l0jH7MyKj1OidzYwa4w-1; Thu, 18 Mar 2021 11:01:37 -0400
X-MC-Unique: 160l0jH7MyKj1OidzYwa4w-1
Received: by mail-wr1-f53.google.com with SMTP id z2so5873023wrl.5
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 08:01:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=k6oFze5sMIbCIyX8fh6bNVbWvONUXk9CXFY3LU86/3w=;
	b=paZr67FhP5F9rysIK1Yq0RGiDbLJOBRi2vqYKUdydbvh7Md2SzwPNt6bgDAqormGic
	f+YnfMET+nJaNs9XmCXXSHKhzECgbBh1hPtwNtjfA88/uqIqEtMtx1So/9um+Ct0Ydxq
	lZs5LeoNaAm2XGNFda2ZvAtHv4WScHJvBhtZYEMn4Q+63Sz1Xje7lasGnoWxcd4SuuA7
	wiBSAyHjTT/CvWc5RyfqjMlybxFfmNiDgp7mY1ssFnIUmTVW4xNzqGgTevIEkNmG8ZPP
	xhM3wKyXCeY/RpUdBfJU6U8MRaL8eyI2dzba4dudMPoPnI5FEIlhlMdTtcWecXNOaaag
	Ni9A==
X-Gm-Message-State: AOAM532S4vnrJvUhorvb1VMFxx9kzDftdqfcCn4HtLlEgAM2ezMq5Jbk
	X4G8pepmmxO0HWSfX0f3x2IWwCmiWyQ=
X-Google-Smtp-Source: ABdhPJyaEDjjJvB9xvT42L8WsaUootbIiy5VKAAklac5MbnsuYONoHxpA0xNWGXGkvayPJYLftwNhw==
X-Received: by 2002:adf:bc01:: with SMTP id s1mr10213962wrg.240.1616079695149; 
	Thu, 18 Mar 2021 08:01:35 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id
	c131sm2627443wma.37.2021.03.18.08.01.33 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 18 Mar 2021 08:01:34 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Decluttering Thunderbird/other alternatives?
Message-ID: <bfe62c6d-2e03-2175-0a5d-21a398151040@gmail.com>
Date: Thu, 18 Mar 2021 15:01:33 +0000
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So is there a way I can declutter Thunderbird to be simpler/easier to 
navigate? I don't /need/ Lightningtaking up space, or having to tab 
twice in writing a message to get to the subject field.

So can I do anything to declutter Thunderbird. Or are there any 
alternative email programs that are just as good as Thunderbird that 
work great with Orca?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

