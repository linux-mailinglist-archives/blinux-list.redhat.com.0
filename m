Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id CBC4E3DD19A
	for <lists+blinux-list@lfdr.de>; Mon,  2 Aug 2021 09:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627891156;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I3OuLbVtPwsMr6Xcfl8elaesiErxqulIjJrbZ9UX3BE=;
	b=P38EzYqwFCX+OFGpyBPL+1iESSX6YyIYDqOb2gNKlQw1Gyx+q4uCCLuyW78ttR/G1NvwF+
	zpiDbh2pz+afP4qttygTUV8iytdZYOxaExH3CA2FdykEpiRey1kYcvobQRxJ5PDnsd+Naj
	QGOo3BFYa0t6jqTvfrgE+CjIwVvtTlc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-252-essYeVkaMduDy1oJ-UBgBw-1; Mon, 02 Aug 2021 03:59:15 -0400
X-MC-Unique: essYeVkaMduDy1oJ-UBgBw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D4ED33E745;
	Mon,  2 Aug 2021 07:59:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD1B75B4BC;
	Mon,  2 Aug 2021 07:59:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CD6E180BAB1;
	Mon,  2 Aug 2021 07:59:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1727x4PQ023628 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Aug 2021 03:59:04 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 77D751111425; Mon,  2 Aug 2021 07:59:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 741E81111424
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 07:59:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 86D7C806606
	for <blinux-list@redhat.com>; Mon,  2 Aug 2021 07:59:01 +0000 (UTC)
Received: from sonic314-15.consmr.mail.bf2.yahoo.com
	(sonic314-15.consmr.mail.bf2.yahoo.com [74.6.132.125]) (Using TLS) by
	relay.mimecast.com with ESMTP id us-mta-134-lUylGRKyMYaekSNLs1qX9g-1;
	Mon, 02 Aug 2021 03:58:58 -0400
X-MC-Unique: lUylGRKyMYaekSNLs1qX9g-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1627891138; bh=h3Knj+Nn8WyyjkqmxW0NPquz32NXVDI8tKGA3MrT76v=;
	h=X-Sonic-MF:From:To:Subject:Date:From:Subject;
	b=K+fKSSHVVmwD1AWH5nfKdZjxNWS4XCGXnyzIkgLq3Uf7xacIZtWATBlHlfNkK4cyZvpnzqd5cIBNADeMayhjs1r6JqapMeeSgWx7abZWO4RX5fUg5cHsWCoFX/A3wx/LmCBjePVSgTPT87HvH5DrwMQZLKoJP85Ou7REbPLL2PKSZZ7rwT/f+redHpYIlE6BswN4rz9H2xmh4y7z3ZZGg4kRp77hwTB6s1UoPipJtozQtKOb0UdhhJ1vIwfxzyOzazKlPJ0lAPkIEOXcCE74XdyGeyn7fSZr9D0sQ4FQPjNXn0GjCfUID278wGPrry2gQ1RqN78ZwbwEIyCnmTcEQQ==
X-YMail-OSG: qV5OvmQVM1lw905sKD9P8gwPjYdhI6tAvBFY0PDr3Jy41C1g6EsvvzvxmB9bpmJ
	6dYO7oCIzGoxhyE_cYBxiNp24AVTRls9ui_8QeYa2VqlEF.VWDfm6NuLY6EcOc24E.iM.ApqgjB2
	IoXK..P4rF_XX3ySSJLLI5mGmIosjckZi3EnGrpqKzM699KWSMYhcXDDngbZttgc4RmbfmRoyewy
	iJHy3Ew6EE0at09SAWtbu92DxO0UAYIgenWwH72A2s6..matagnJCOH.2t4mTuW0M5e.vTp.Nhtm
	zRCSXLEbgFlYO5Vbbva3xuvfULM8pvLPAFznZvKY2SwIlUuS93x_QSlJoxMCcdjLIQJ6B3E3GL9J
	5bhiEin67Lc24DLOKnp0NYc1I8URNTtYveFfeLtV8wRtOGE5fS0PR3XkgeX9kqfQLvlQALrR2G75
	7ZQYF0GHIlTRzg8bb92UAoXjcys3LClTWHdouzCozLI.1c5pd8CIUGtMwILl_CpBXAF_Dn0l1DPE
	Rsr9DAWrfKTvHyn58ZeGIZH8RhVvvwJN__8Uip9uAdEsTn2PQe3dwCl6jm.DmPlYMvdf7iAdoAHG
	7x.l3.dRFd42AiUJfUUArKgPGXZWojaAApOcxBUht4pMCkeOhD3zYn4KBioWvv0fpU8pyoKEOBjw
	PAytIm4UNnWSoxbqmF2dBYSgWNmIv1PI.hIU0WGTXytK1Tr14fS9Meuvgm9AQLNb4cysm4F7s9n7
	yEOnrpbew6rd0HTtRkqiEmZFKq0dF_sGwm8sAENbuS3kEct.Yni1i90XCVqJ4UY9kCBTFHGFealY
	FV_zErKjF6jtCl64u9esx8PR0SIQ._n4VB54epfQrKlU5yRJ9_isTUCzt7PFKWisKCeeRz9IntZr
	LvnCXzCYc7jZ32Zi3OrB0DOtvyFwzUKmgjabr8Vc2xmmOSbNl46dmL9NqlmPezCXaQseNJZzKdOD
	z6wQZBXrrsZiTjPOws_hi1VgVQsFFtGCFJ59VZ6XugrKjBVIUe39W.mRHan_mAUgh5U79SXeKBzY
	.qvf6.b9APP3zsh3unR4MdW2K.fjojWTIh03bWYVEddli5C3KDbTHoGgX2wyhQU.QXU26hCrOmAH
	E0BEb_7LAcFHP3iDuR1HIoWB9BYeUolPdWua6taHjgLgu8hgfhvofgAwAeHitVtzXkcQDJzF.Qey
	t0eA3UyPl8oBk4OGfFASUyKLlKg6cFFsYSFRO1.N0SfHMuCIAg885NMkHk21wHwd2HqcNzBYPOmi
	1kBy5GxhrBWo.rkuoSFjQ7sSfvwVQgkWklIlBG1v2uDzA0jZvkkxWtlj_.Tl_m_OQt_bmmErjuGq
	fqn_gI8RmHumxD7aW3LAKO8jo.AWFVARMBQqATpYfIdwKH4SYZp.SDkwFmQYSwYR6UECZSQgOZAL
	bvJbV.HxBa2dx.eprY7N2sy0RhzPQ4wja1S_y4.pl8dtHmWhlDYNTRuwnpkt.ZObvbC5OtAnNmSK
	nJwYQy7eVoy8CDoea9oufaAvw6n45dbSYkKjnnY.QpVu3_SOc5OALQ3ySFNijXyrQlAWwiy9yDuC
	hQpp7_8v5JXolQKE2.PQn6ks6QPSNJDKzgWvK7NkcjOHgz0SmE3.X2ZbE_EFcMwr2JDAYHSqvC4J
	yAk_MzRMJzAV8GJKZOffGJuXuen34ilsUP2ALZlexdivKYVfKCh5MrNFYHE8Dg0mM5He8CkOuMEZ
	SohQZG7bqXMMQ_OeKxa9HB8IKsZ_0rEzfvItggIXkHWZR.QTh_w2U48kQaDT5KPbmAjtcjd.iFdx
	EQVTZmbEMlrqX5ZCEO.mpesLxi6ZzlHHqz.yqiBqmGLw7OghfmQTwcjVlf1kcKuxJe0MuSnvvLpB
	Y8N1DdXvx_kyxTu3VKPc1ZCRBeLCNOl7nQNj91O440xnwP6vq8rkd7LxNWQySWXim7v1q0NJifIy
	QrzxIWCuhcqQl3KRlJHVIkkZ2kVoCS1V.GRIpmsd5sMK..913uaoPLpWBF9QRD9N2kclIEYC.rW6
	uUvyPGlnzmMoO1w8d0TX0Hm3WfAQFzrBVCFhHIe0HG3yw_a7KWQ8F5FYgVUk4uKx5h0I3zXavnni
	mGxNtvY.hjAW3_MbAGP2dAZFMQQHbnxA2pB9GMjzrBlT6TIdb0O2SNOkcIYLcJ9eyT4mlz_pY4mC
	8Kb0kVyZggHCsajQwJJyIKiNIgOeyP9lupLgd38SuQES3qyFlzaYEXHbZwlQQTwFE6JI8Jdfd6bo
	Nhax.8HrwVLIUKArH9fXammPghVz.RCQjN3tpngZmUk51OT_W5H1xpebdg5BeWyDgS01MdeaFjxZ
	tPgM2Bh3XIbR1Mo4zRdr2G4utLykMRUsRErRG21P8XYYqdTRH
X-Sonic-MF: <ishechinyoka@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic314.consmr.mail.bf2.yahoo.com with HTTP;
	Mon, 2 Aug 2021 07:58:58 +0000
Received: by kubenode551.mail-prod1.omega.bf1.yahoo.com (VZM Hermes SMTP
	Server) with ESMTPA ID cefdec38c150c860f64d053bddc0af60; 
	Mon, 02 Aug 2021 07:58:55 +0000 (UTC)
References: <e1e89997-d831-ff6d-0b95-3a92f611e099@gmail.com>
User-agent: mu4e 1.0; emacs 27.2
To: blinux-list@redhat.com
Subject: Re: Installing the Orolux IBMTTS version of Eloquence on Slint?
In-reply-to: <e1e89997-d831-ff6d-0b95-3a92f611e099@gmail.com>
Date: Mon, 02 Aug 2021 09:58:45 +0200
Message-ID: <87zgu0xop6.fsf@brainpower.wer>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Hi,

I successfully installed Voxin on my Slint machine. At what point are
you having  problems?

What I did was to
1. Tar xxfzv voxin-3.0.tar.gz
2. Change to the folder with the unzipped files with cd voxin-3.0/
3. Change to run as root with su and press enter.
4. As root, run the install script, ./instll.sh and you are done.

Good luck,




Linux for blind general discussion <blinux-list@redhat.com> writes:
 
> Hi all,
>
>
> Ok, this one has been driving me crazy. I have successfully installed 
> eloquence on pure Arch, Manjaro, Fedora, Debian, Ubuntu and Mint. I just 
> cannot get the damn thing to install on my Slint system.
>
>
> If anyone can help, I would be really grateful.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

