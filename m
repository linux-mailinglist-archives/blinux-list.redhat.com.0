Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id C2F883BA42A
	for <lists+blinux-list@lfdr.de>; Fri,  2 Jul 2021 21:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625252463;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=cr3JNTrNp+iMj8gNWSQu1fnbsquT8Kart3shsLXmHNM=;
	b=RQ3hxDuddSGSM7r0azBwYByDXdhkH9RBu4cEs+xUnQxitScuvhQYLTB4ccJDY9vgTDR6iG
	PTSHIeQntKi2P0qahxZnRMeANi+FFu4wyI4DR3nPiUahyK1TJ0dMsuDgGNI35N0YdMnKFa
	GVpmqP/aEHgp37ZaBnCoh8z0IraRqp4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-oXCd6wRvPV22-jWP9jchyg-1; Fri, 02 Jul 2021 15:01:01 -0400
X-MC-Unique: oXCd6wRvPV22-jWP9jchyg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E6E161018724;
	Fri,  2 Jul 2021 19:00:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 930E5604CD;
	Fri,  2 Jul 2021 19:00:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3C0F14EA29;
	Fri,  2 Jul 2021 19:00:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 162Ix61s027760 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Jul 2021 14:59:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0FB2E10BC2A3; Fri,  2 Jul 2021 18:59:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A1C210BC2A5
	for <blinux-list@redhat.com>; Fri,  2 Jul 2021 18:59:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23F2085828D
	for <blinux-list@redhat.com>; Fri,  2 Jul 2021 18:59:03 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-413-Y3WsqCGsMEqsAPQcdHT8GA-1; Fri, 02 Jul 2021 14:59:00 -0400
X-MC-Unique: Y3WsqCGsMEqsAPQcdHT8GA-1
Received: by mail-wm1-f48.google.com with SMTP id
	o13-20020a1c4d0d0000b02901fc90de999bso3029137wmh.1
	for <blinux-list@redhat.com>; Fri, 02 Jul 2021 11:59:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:thread-index:content-language;
	bh=0pdl80pOvHKL9kmTBp5DuOH8K5Kiv+YbApZYP+h6380=;
	b=oCvaxnlWllp64PPumqJ40i7pQZJyxneUn4USRamX0ikHMRkm/pMQXIi8NzVUlbD3LQ
	FCU7/NBPh/azapFGnbmw1ZCcHj9+oYwPYnS7brjM0kOGfIkR82+aM3FN65f1YkLrToyD
	2f38DYQkETwL51H7ucMHw54z1Kg5a8BNZAIgszkoRy3QA7wlKfZHHqvz6t3ZKX95Iga2
	odZxyn3GOiCM65gfeWeL1ufDRwqEPLa2ZDpWCYwXwTIEbAAKjn0/rwlR0kgD/IyE/S+q
	gS8LMIVo4JMgvPUX6sCTr+hL2lUJA9tsNAbRAJTvrFfpcy44yPF3lyIpOGmiwfzMFZgi
	M+bQ==
X-Gm-Message-State: AOAM533khhXNfGYEza26dCWz8KT83dFeTAHcMIFpxCemKG9iI93puQL+
	HqCuPx1WHVFH+k8WQB0LDL4/m7VgIhA=
X-Google-Smtp-Source: ABdhPJzPRvBnlQqHYNzoiKtJdOU+El5eFwQcFEhkO8kSm/ltfFwMKxM6ZtUhRtGouSl92z71tzyXaQ==
X-Received: by 2002:a05:600c:21c8:: with SMTP id
	x8mr1217503wmj.167.1625252339206; 
	Fri, 02 Jul 2021 11:58:59 -0700 (PDT)
Received: from LAPTOP57VCMCF1 ([197.185.110.110])
	by smtp.gmail.com with ESMTPSA id q7sm2097007wmq.33.2021.07.02.11.58.57
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Jul 2021 11:58:58 -0700 (PDT)
To: <blinux-list@redhat.com>
Subject: Interesting arch issue
Date: Fri, 2 Jul 2021 20:58:55 +0200
Message-ID: <087a01d76f74$4fc8ad00$ef5a0700$@gmail.com>
MIME-Version: 1.0
Thread-Index: AddvcqXUUe20IhJXQ0Sy7sWW7Mn/Bw==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Language: en-za
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

 

I have in the past installed Arch successfully, but now, for some unknown
reason every time I do so by hand, AKA "the arch way", something is wrong
with my grub and seeing that I am at the moment installing in "VMware
Workstation 16 Player" for windows, I cannot boot back in to installation
media to repair grub.

 

Seeing that I am installing for bios boot, I do the following.

 

$ pacman -Sy grub

$ sudo grub-install -target=i386-pc /dev/sda

$ grub-mkconfig /boot/grub/grub.cfg

 

If I am doing something wrong here, please help?

 

Somehow I got Arch installed using archfi, though I find using that script
to be a pain, because it does not install accessibility tools such as
espeakup, Orca and espeak. I also found that the sound didn't work until I
reinstalled alsa and alsa-utils.

 

Warm regards,

 

Brandt Steenkamp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

