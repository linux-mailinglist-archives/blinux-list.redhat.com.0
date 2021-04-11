Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E306E35B5CE
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 17:07:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618153643;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GIJx67C1kMgFyaLKyWkQKdkbSDggdkHmfsCiK/5nzvI=;
	b=PbEWERX2A6+2uIEhjwLxq2gmOOZ+ARhD/OKzfuca+Qj+xFYkxjbxzTTBKKdnqgTv2gMHBB
	YGc4Rk1+iVUhRx1vN4WZf2yYfSrmCepQ70sXMW62MApyO1CmQohSXzcPzp+zMaWa7nUuSO
	JLCEqGLlt9JVeM4U8ohvUqEzY7r3FVo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-473-MDMNOQy9N8escruJpeyM5w-1; Sun, 11 Apr 2021 11:07:20 -0400
X-MC-Unique: MDMNOQy9N8escruJpeyM5w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B98E21006706;
	Sun, 11 Apr 2021 15:07:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6278C5C22A;
	Sun, 11 Apr 2021 15:07:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CD8EA1806D0E;
	Sun, 11 Apr 2021 15:07:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BF6VKl001532 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 11:06:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 1041A20AE849; Sun, 11 Apr 2021 15:06:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A82F20AE847
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:06:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 30F1B185A79C
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 15:06:28 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-193-O1gy7JNSMyCNedNcxmDd2w-1; Sun, 11 Apr 2021 11:06:26 -0400
X-MC-Unique: O1gy7JNSMyCNedNcxmDd2w-1
Received: by mail-qv1-f44.google.com with SMTP id o11so5057312qvh.11
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 08:06:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:content-transfer-encoding:from:mime-version
	:subject:date:message-id:references:in-reply-to:to;
	bh=o+MRy13pXCuewShx4TzQjgHiBdyZ8/GcsfNWgLgSzGc=;
	b=t/ArLtdkprzqdMjpXWwqD0n8SR7V2UQFiH1G07GD60l2djhpPMbDqykl8jiaFrysCS
	cBfFSo87H+2jvYfNiHt+CfO7IiOfaAfe/ch3T/8FigxGXYh82oXkmx8ihLa0OB4eQKKq
	SWJpQrMwGcmz8zTJi9V3C3/Wl67NsFiU0ZukFX2+qq1H+baUdNbjzPztE//CHcLcp3PT
	jxzMtde+WRBFdXT7GA2mkvTX4qj2+2XaZg8SW56nlXVoP1UPE8JiiRwOElhUsb2c9PdR
	+ITQmR+OYFfPimdsbi9WoigBGbsYW4dYO47XqXgpaQvQda4zRjts4CTBpIXg6EdnEzUU
	EYAg==
X-Gm-Message-State: AOAM533BXM7w7ACPcXs9qw6ALxIy9kzUe/4m7mwnpAp/mj2pQdx8l1/2
	/Udh9OdljGaDnU0b96AOtdPriUM3vse28w==
X-Google-Smtp-Source: ABdhPJxErwo6CNA/Ja3ChYEbjTb5LlcZKIjG1UPu4A1s7BsD6RinmJrG3q3XshsJHNenipAgb2K1Mw==
X-Received: by 2002:a0c:9bda:: with SMTP id g26mr23432093qvf.44.1618153585381; 
	Sun, 11 Apr 2021 08:06:25 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:3c00:65f4:7f15:4759:19e5?
	([2601:192:4c80:3c00:65f4:7f15:4759:19e5])
	by smtp.gmail.com with ESMTPSA id
	f25sm5333388qtm.49.2021.04.11.08.06.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 11 Apr 2021 08:06:24 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: Some questions about Arch Linux
Date: Sun, 11 Apr 2021 11:06:23 -0400
Message-Id: <93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
In-Reply-To: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 13BF6VKl001532
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

As stupid a question as this may sound, did you install orca, speech-dispatcher and espeak explicitly?  If you just installed orca, you may not have everything.  Do you have a talking system with espeakup or fenrir?  I hope you installed pulseaudio?  

Cheers,

Dave H.  

Sent from my iPhone

> On Apr 11, 2021, at 10:57 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> I also modified the .xinitrc file at /etc/X11/xinit/xinitrc, since that's the only one which is available, and I inserted the following lines at the end of the file, after installing the system:
> 
> 
> export GTK_MODULES=gail:atk-bridge
> export GNOME_ACCESSIBILITY=1
> export QT_ACCESSIBILITY=1


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

