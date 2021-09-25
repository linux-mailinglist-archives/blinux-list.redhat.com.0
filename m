Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A9377418263
	for <lists+blinux-list@lfdr.de>; Sat, 25 Sep 2021 15:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632577125;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=FIYqRD6A6J//5DlWMPMHkhLMeR9wonvv0V5baamN/78=;
	b=S8Ovud/WqbcraetEq3qFGDSyHNYiSWRnYo+7u0R6ioxdYoDzaHLviCZ7HEpwlk0shHveln
	JVIvxokLhdlylvv3e3zhDG5pP7iIW0wvCiFPeXivFM+dkJu6nd6eINpe2znLPFjn2eozla
	MKzI0Tt3SB0e5iIP5oxR+puBWUu5zU8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-314-M5XNHsKNOde8eNUYTe8kRQ-1; Sat, 25 Sep 2021 09:38:43 -0400
X-MC-Unique: M5XNHsKNOde8eNUYTe8kRQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C39F71808306;
	Sat, 25 Sep 2021 13:38:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 387A75D9DE;
	Sat, 25 Sep 2021 13:38:34 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F09A71801241;
	Sat, 25 Sep 2021 13:38:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18PDbtfe011035 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 25 Sep 2021 09:37:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9A3E320A8DE3; Sat, 25 Sep 2021 13:37:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 958F120A8DDE
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 13:37:52 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2CBE11857F03
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 13:37:52 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-241-HZCq-8b0PdCd14UgUIGLOQ-1; Sat, 25 Sep 2021 09:37:50 -0400
X-MC-Unique: HZCq-8b0PdCd14UgUIGLOQ-1
Received: by mail-wr1-f46.google.com with SMTP id t18so36137205wrb.0
	for <blinux-list@redhat.com>; Sat, 25 Sep 2021 06:37:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=4XHSZP8cfB1lAgMaO8juvMKn30MAruf2eT6vzb6DlFM=;
	b=64Gk5l5wS8x5jEMUegbscC/f8X6dDivHJfKRmcbiANhYGk2Dko7vGNMAyh2d4LjE31
	bxdcUbGVnbWyoWMcdUF3P3by60mFXvRD7JIgPk90L1JEnoDiWIqKELS9pag6tPfAdVxj
	8MtXpIjbiaLfgND3hxJlSZGlg4W9IaaHmH/t6FOv7EETg0R9Bdgiig6IPm7FLqwKjuHw
	IQDn6pTuiMqd4+FWX9ufwN36hCp8uwNfoMHClirMN0FWxeoxEtqUFKRY+EMVegEtFqkg
	rf/9YD2FtfcSs43yWlXBy8fRLJ7tIAcPWwsStorY5K/QnbO2NgjhvmQ1yYoXyinf6gni
	rQyg==
X-Gm-Message-State: AOAM530LS6aO6p28hMq/WCycLdxc5m/aLVXOx7oUILBxzNe1SDNa0og5
	IDyDgzCh9nHRU3wMt/exnWsWyR50r8g=
X-Google-Smtp-Source: ABdhPJxjHgHXFo3BbqngRujc5sWrugGFqIypdkJa1t/wUbNsRiVYbsLHJLX9JQIEQb0C2k5jnCsz0w==
X-Received: by 2002:a05:600c:3209:: with SMTP id
	r9mr7070437wmp.132.1632577068642; 
	Sat, 25 Sep 2021 06:37:48 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.201.36])
	by smtp.gmail.com with ESMTPSA id
	a72sm15846924wme.5.2021.09.25.06.37.47 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 25 Sep 2021 06:37:48 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Did Mate change the Brisk menu?
Message-ID: <3dda2919-2447-9f48-21ed-49c832ce4ff7@gmail.com>
Date: Sat, 25 Sep 2021 14:37:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

So as it says. Updated Solus that uses the Mate desktop. The Brisk 
menu's gone. Is this a thing from Solus or the Mate desktop?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

