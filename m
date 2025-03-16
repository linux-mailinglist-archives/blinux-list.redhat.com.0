Return-Path: <blinux-list+bncBDP7P6HU4IERB3PU3K7AMGQER47DZ2Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C501A63573
	for <lists+blinux-list@lfdr.de>; Sun, 16 Mar 2025 12:48:00 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-476900d10casf87354561cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 16 Mar 2025 04:48:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1742125679; cv=pass;
        d=google.com; s=arc-20240605;
        b=Q4IcOUdpiwGUktfH8YTchxvIyj3DEZj40DqGxyvSQcHu+1TW+2PUsPX6QDKfKeZpHw
         JxION2pTx0PXRCESDuHapx0ePoxKGeAcN519eVdaG9gEoqBeo8j6twMyUH3lYLntLVAJ
         FTQuRuLMNwgccZAPebk70iz7tyPlQP8dYkBb3tJ2l4hhzQM8S+Wdk29vHeNulaNanNpx
         Si2/cU87NdYp+qV5egiATWooRKT+iB7QH2Kt7Nf3xm0zokGDNBfuxuKN4dVrehdfquae
         UyHjPtS4VYrGZcEqhaK03joTpYk+1YbsrgcutWn6rK569+oYQ7m6oPhGMWkAYAVeouHK
         kZ8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :subject:to:from:delivered-to;
        bh=MgdII/rnC8nK7GXaGvxj2iIqtCh6uWEJLCLX+sDTq7E=;
        fh=5W3/AS0Phm89w/Jq6VtLtWEt3d3/MplW5JWadlJO8Fc=;
        b=M+q6heVr+rCaWLJELJaYQtPCFXQqn7nKtC7mcUEcBm/OkrNdZtRaJoIPLYuFauNHD3
         8QMUnUyJw+bmNzYCW7cdctcQCKMlx8TVqQUdZHk9HaESup6pPBPYCsd9Yr0e2cpJDeig
         dNAGDXgZ7Tbb8qMiQO8wrjbyx40ByXCVroKNAkBt/qmY8hS+qKtJkQzbR1z76IbBH4e8
         11pTQTujm3s7Oj0O9vrGeXlFnJW4frOrW/OyryMo66CEIB/mqlKeCs1sf4EwCKsJBkPf
         w1LfdPVVs503CCNks5fSO4O7nrOIWYSWQK+2/gD8hRxEfa5OHOUKcgJhpJwDTpCEcq/U
         t0eg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.229 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742125679; x=1742730479;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:subject:to:from:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MgdII/rnC8nK7GXaGvxj2iIqtCh6uWEJLCLX+sDTq7E=;
        b=fqBAnyechzmxOHnUQoHfcCCoxBfcBLVEuEN2tcFzuYJrVMQk7c/Y91+7/r7OIideOi
         pPMRyqOCmChrOTvq8gfjBC4sBLpCBh2FQyGrrVGlFphn+DDsepBAgVLGrTnWkOUHeBY6
         PB7Fep1vrM5mHtVrkAOzddNqwQm/ndlpMNzc4K9P8OCw62eJFK5PnSeIFRKO0uReAsX6
         ASqhmkz3+Ec4bLygnI5kUpsLDvqfoSHUmIONxBgrDO5WKLo8MIbUcjvjzHVdu28BGpaY
         VxTMsKGpvgjI/PZo+ccweyjikgf6b4nX31jx28l6kx0+yGYq3RZ0cSruGNdsG0Phbx8a
         2O/Q==
X-Forwarded-Encrypted: i=2; AJvYcCUjwE3XpFg0UfpnY6HCezb9FLiPGuuIqi/HtvQiCGARAMbnnmRmNutBdMdPKnUY1mmNJi80aw==@lfdr.de
X-Gm-Message-State: AOJu0Yw/Pxe1n2AAqy66wV0XT5pCKWrrvoI2nkv4N/ZalKPeMKNPqkPV
	26+ymsfup6eoM7HJC/EsErTdT7WC1N5IL+SoLMPme7pRID/E1Ea41KsSlOVmOTs=
X-Google-Smtp-Source: AGHT+IGpgIdhcnv0MIIT+DV+BSj6UVIT63bo6LPCQSvaKSPflfC6+UiFwQeK0KgNbqAqjwKcrq/ysw==
X-Received: by 2002:a05:622a:1654:b0:476:b480:e440 with SMTP id d75a77b69052e-476c8153d3cmr137504991cf.23.1742125678622;
        Sun, 16 Mar 2025 04:47:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARLLPAKTytE7FOehTCvJwuskxD/IpyV4+QFQqfd96vm7+cvkfw==
Received: by 2002:ac8:594d:0:b0:476:8e7b:68ff with SMTP id d75a77b69052e-476b7dadf58ls69141731cf.1.-pod-prod-06-us;
 Sun, 16 Mar 2025 04:47:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUbK9F1LSlP8LyDderUx8aua8WaBzBJlsmVadbw12MJO9wkrc2L1bGTn5t58rMWbG1ZuX1HCd7SkpyxHg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1aa2:b0:472:1f07:7a9 with SMTP id d75a77b69052e-476c81583f0mr140129981cf.31.1742125677224;
        Sun, 16 Mar 2025 04:47:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742125677; cv=none;
        d=google.com; s=arc-20240605;
        b=T7gBIHaiMK6z90Hxnm3Ij3VVd7vJT77Uyz1EN+LajlAnTLkKHYIKKsMJJyV3Xa80nd
         2fKegQrnqLfvPscpJ8+yxXoBtx08/xACgp2K+Mg2JWHYKc2rqlo0nAnrvcKC7S1Hya4J
         n2eQWIN9MdRkyNEJAaXrejUxpH808YS08bStntsgmTy5Pkg1KtVMJvDYIFlIW3y72PW8
         zzQRvGGQy7+n8UnimV4PTYRiMElKzroLtmCmyjVxlJMYTzIyS+2p7LSUq+njJHP+5zQ/
         jmBzpmgd28PkIPWfot53qpPmFN4Ir+i104gxs5v6tWOi3V00ehsLdE3iam0YlMLlGW4U
         3SeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:subject:to:from
         :delivered-to;
        bh=RvO+Aq+BBfTCh46HH8CH42HQo6uYA4Zw9a6RjjgiZ98=;
        fh=UXMxI4s4Djxgk+RlX09cLFOW2BmKQ694I1DkcKIh55A=;
        b=Gld8CEmiFuQqtz4t0l71UP/H0mHRW5DvCm9jaXbGYZS6+aW+I3J+1Xa7NMw4UjzT5I
         r4WKR0SSABelkZ6ErroOx4nMIkBA9H8kGYZtaw7aL/0v//4BbFDGgHRuDtTxHIA8ix2e
         4oHxmY4Y4L2y0yZ6JsfQyQNibipzmX7hPc0HDPw7duPoNNMNcKErJGmmOfH0PWRc8pTF
         drxlL9hdMDE7/STeo32mfFlNt1vWjI6OAU+SqWjn7iyxXSykFbzArbP7tjfJO6h1Ijn5
         /E2sSjk84mmWin7i9rhugulUB2YJpVQdBSGsO0GxlR08mi3yttfagkdinEzquREhny5J
         BHPg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.229 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-476bb856521si75918531cf.510.2025.03.16.04.47.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Mar 2025 04:47:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 66.179.105.229 as permitted sender) client-ip=66.179.105.229;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-456-u46abf1XOEa9Eg-MA-d4nQ-1; Sun,
 16 Mar 2025 07:47:55 -0400
X-MC-Unique: u46abf1XOEa9Eg-MA-d4nQ-1
X-Mimecast-MFC-AGG-ID: u46abf1XOEa9Eg-MA-d4nQ_1742125675
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EF0601956089
	for <blinux-list@gapps.redhat.com>; Sun, 16 Mar 2025 11:47:54 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DAB513001D11; Sun, 16 Mar 2025 11:47:54 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D7B463001D0F
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 11:47:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2A2A0180049D
	for <blinux-list@redhat.com>; Sun, 16 Mar 2025 11:47:54 +0000 (UTC)
Received: from altprdrgo005.altice.prod.cloud.openwave.ai
 (altprdrgo005.altice.prod.cloud.openwave.ai [66.179.105.229]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-280-BG4UezYQPSClj54P1iXGxQ-1; Sun,
 16 Mar 2025 07:47:51 -0400
X-MC-Unique: BG4UezYQPSClj54P1iXGxQ-1
X-Mimecast-MFC-AGG-ID: BG4UezYQPSClj54P1iXGxQ_1742125671
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 67C235D3009593B3
X-RazorGate-Vade: dmFkZTFD1X7nTi0xoMtael2mUzQZ0sAz1S/1qYnyCOOFC9Bvr6CU68NGe1NULoiNlOpjGhVVzu/V//W9a3UhHDQD6LqQ/gnSKs7lnF2GqNTsxoN1xA6O8R9TdXEtdiK08OOGMB5f7vsrXTiP1/bXYP7mEMdq2T9X9ozRwSbCNaWBwZdo27VmiAFTUiFOblbLqiGcbYom1DnpQAfZ76C74QMp7kbso2ObXFkIUvHvbbITbiOiW425pJy5yVreGxxTkvaBYXMqSLPYQOa1D7BD+wKojaPnnbPxEarXGKwW4+CTKYYH4DANuL5kN5AL2dMy5RZlrYm45EJKfDPxBe0tUcHC1KBIXK84lZDxZs3cFiw32e6An75WXbF/OBSssO9nR8r6laMq4FP2E7E6+qNKs2cGCzB1H20/O9KmGfVV/f7TS1qXbySIRweO0dN/3KN4M/eg1Q566BI15XcFBymgguxAL+ZrE/8lEuqKU4jceL185KeAMJa3rulsb9FZrJLz/RxZVFGBgErA7Rr1mFTBrbwvdK6DqT40aMGWnrB0b7AScjm1LLz+49XAjgweTJFU2mmTbqdi4DjdLXAWShroshOJ7CkUkkgclnHAk+MBy5lPL0S0V8zpctC5xdT6Ev9gQfg0rQl3BpNDMIZJ1gubQZaGjeZ/D0KVCrY+mgbOwnrqht+WEQ
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo005.altice.prod.cloud.openwave.ai (authenticated as martin.m@suddenlink.net)
        id 67C235D3009593B3 for blinux-list@redhat.com; Sun, 16 Mar 2025 07:46:06 -0400
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1ttmRL-000ND0-2x
	for blinux-list@redhat.com;
	Sun, 16 Mar 2025 06:45:59 -0500
From: "Martin McCormick" <martin.m@suddenlink.net>
To: "Linux for blind general discussion" <blinux-list@redhat.com>
Subject: firefox or chromium Capturing A Table to a Text File
MIME-Version: 1.0
Date: Sun, 16 Mar 2025 06:45:59 -0500
Message-Id: <E1ttmRL-000ND0-2x@wb5agz>
X-Mimecast-MFC-PROC-ID: azXbOpCKNQUC2p17akCaQcxiWeOM0lFeGPUMlA5veGM_1742125671
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: DtqMFdR0_jiIBV6kq9kTBLBm-Dr-Rb8gliAPxEMKAPk_1742125675
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <89215.1742125559.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 66.179.105.229 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Is it possible to save a table to a text file in either Chrome or
Firefox?

	I just had a heck of a scare at our house when our ISP
had some sort of day-long melt-down that bricked our 2013-vintage
Netgear router.  The router is actually fine and came right back
up as soon as  the ISP stopped feeding it poison and started
working properly again but I think it is time to retire this
router and go with a Linux or FreeBSD-based router that lives on
plain ASCII configuration files.

	Our present router is a NETGEAR Router WNDR3400v2
and probably might make a good access point as the hardware seems
to be okay but I am sick and tired of dealing with the web
interface for administering the router.  Web GUIS are not
efficient for control as one must do everything the GUI way
rather than what I call the easy way which is,  Edit the files in
question.  Give the system a n update command and you're good to
go.

	For 25 years, I ran the DHCP and DNS boxes at a
university before retirement so I know what I need to do.

	The Netgear router has never been very blind-friendly
because every browser I have tried on it has some sort of issue.
Somewhere along the way, I was finally able to change the
password because it comes with a default password that one should
always change unless you want to let all your neighbors share
your WiFi.

	I could reset the router to gain access to it again but
that would clear out the dedicated IP address tables I created
over time.  Those tables are visible as I look at the "attached
devices" tables so if I can capture those to a file or files, I
can make the ASCII tables in to the sort of files that the ISC
dhcp server uses which are ordinary text files.

	Right now, when it prompts for a password, nothing I
thought I was changing it to works.  I even tried the old default
password and it no longer works either.

	I tried backing up the router to a file which is a good
thing anyway since all the settings including the rotten password
are saved but this particular model of Netgear router uses some
sort of proprietary format to the backup file which would be a
major project to try to reverse engineer.

	For those interested in such things, a number of folks
are using mini PC's loaded with an open-source router program so
you have to get a mini PC with two network interface cards and
install Linux for FreeBSD depending on what router software one
needs to run.

	One NIC points to your ISP and the other is your home
network, usually some private number space such as 192.168.x.x

	The Netgear device has a mechanism in it's web GUI to let
a person recover the system password but, you guessed it, the
process only works on Internet Explorer, firefox and chrome.  It
specifically doesn't work on safari which is what I used the time
I tried to change the password but I've changed it to some unknown
garbage and can't seem to get chrome or firefox to help me any.
GRRR!

	Anyway, right now, the Netgear is good so I want to copy
the DHCP tables to a real good old text file and never see
another web GUI on a router in my house as long as I live.

	Seriously, web GUI's aren't evil but there are no
standards for them so for something that is mission critical, one
needs a basic lo-level connection like command lines and ASCII
text.  They usually always work.

Thanks for any ideas on capturing the tables to a text file.

Martin McCormick

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

