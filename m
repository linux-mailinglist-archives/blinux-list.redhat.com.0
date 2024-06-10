Return-Path: <blinux-list+bncBDYPVTOXSQEBBQ5GTGZQMGQE5QKYCLI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A595901931
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 03:13:41 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-44061ceb150sf12601141cf.3
        for <lists+blinux-list@lfdr.de>; Sun, 09 Jun 2024 18:13:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1717982020; cv=pass;
        d=google.com; s=arc-20160816;
        b=C5BfiSTXiBtE8nlSPsIqowHkNn8UHPZkQGllvaivjT3TaVHZr2MPxNKE5NYlZVptib
         XuCkJzjCff+bJvtt2eCoXEEWOv7luzV+5AnKcHd89JuMJ8OxnuSLxJHy69ZdVDPIBwK3
         Wy1JIwvB/NjLFwa2PpmZCj87uHT+Zqk0qM7CASY1deAtubw+rP6zlUCoMb1bzgjK6TS4
         OBwRdXj6jZtOZZ5Un1ImwtVKK8ZSK5ddn2dPTSp9bfhNcR9iCv6L6v8VEQ2yQuBe5cbE
         WYRoqKQBD8gHlq/9whn5FZ/ugaCz6ZbqNIGaGeo7J+K9sDrhXlxjQuSYfi3AuzsRTd5I
         30Mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=MInbIwXUL8zoSeMrANBK9dTxk/3EXON+R3bf5jCM1vI=;
        fh=zNUok0NS/W8D1Z6SNLB0MFPpZcrN8RbkCjXrctA1VK0=;
        b=056mRSirOfF7K8vIRWrLeiyQx1KZCpSd0oeEIKtPaG4RcfgEog8mN4tz2dtE8kriks
         fzBtlDI/OVI/Jc1rJjWZdwnNvCxiztccwTVLdnzu8WeRAwC5b6FgqKCO2t0xcInV8B0t
         QaBg+uSVWRrZItDJlqFEKFuqZismpDx6xA0o4GEC5rWNMjUSFyZGE+cdqXagfoB4Zm9s
         78mKyCATz6khB4mejNLikwYQu4tkU6SdXdSq24wFKnXC4Tptp7EvuqFiT6bunEcqvIsz
         Lj8sRM9Ix30+6bCOdSpevlmYSz+KzluxCbjDtiytkcyZPpgpRFTeWpzguRwC7len0Jwb
         ZNew==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717982020; x=1718586820;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MInbIwXUL8zoSeMrANBK9dTxk/3EXON+R3bf5jCM1vI=;
        b=A+YqV+Bkt0xAbO8nW10ICzoKyugfhvBJAGfyZ6Yzli4DW58VkSW+ODZEQMTIiA8JWm
         T2xaGclAlYEzj3H07kqtOrzY20n0jAXhvEMnbfl2QLnEov8AqMPd5yk7GQsyoJgRNkpx
         LQ3DMR/31fGt5magZ4oWrj2fDIz7fqqgruLWPqICh9yx1aVcfG7UbND6GK0cgKRslQKX
         QdJRG1C05GBefPBOF2FNGHO0vXo6RbNQsBC2Zax+WnSeGsITPc1zgvoirrQ8Jq7aojiD
         Lac4WIvNj5j/LcIODd6tz0SilYgZTWqq6NnWa3Ydm3y0EeoSb3UgqOSad/fUeGXt7aPd
         wGhQ==
X-Forwarded-Encrypted: i=2; AJvYcCXbSKOq6L6B9tGhnUoFl+bn+lLfhVstqTsz6LxpmZCNDZpc/gzb3+8T/LHYCsGoUZ+MGlegR1fuQFdP5Zr06gfLqlsHeBy6NsrF
X-Gm-Message-State: AOJu0Yyie6WJ0esWFv/diUZhWjAbBzicJyY2nuOSFWLSI/llMYlUyj2P
	Dce7YMAj/o9xsmNmDK+1l7vZlNSG7GYImtOc7J1MlbODvCOGkbn6UvEJ174muk0=
X-Google-Smtp-Source: AGHT+IGlV09QuxyrEpFMs2qrt6Pv9VK2/EgHLow5g1UxAhOf91qk+A1wzWytnNHI2al664sJTtMbUA==
X-Received: by 2002:a05:622a:19a2:b0:43f:f291:11fa with SMTP id d75a77b69052e-44041ce3638mr90305551cf.41.1717982019989;
        Sun, 09 Jun 2024 18:13:39 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7ed9:0:b0:440:8030:a088 with SMTP id d75a77b69052e-4408030a7e2ls6595221cf.2.-pod-prod-08-us;
 Sun, 09 Jun 2024 18:13:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWu4LrReBGAkv6YET74oSkaVcmAVFej/QQIOS3W3Gb0FBEvptaJtoXJ+KqFXORSMz/vwJTnhUldcCXAwfOKCiVF54cUdDlI91p26OuT
X-Received: by 2002:ac8:1243:0:b0:440:891e:d040 with SMTP id d75a77b69052e-440891ed692mr25515861cf.26.1717982018861;
        Sun, 09 Jun 2024 18:13:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1717982018; cv=none;
        d=google.com; s=arc-20160816;
        b=M6VDaliYL8gJo/pOl8AQ1YCw7Vz7W/KmbKWvU4KoB9liQAwYeA71WMbmD9WPWDb7vZ
         akSAZENaSnv+XjrgvlJHNjG/+ITtWQLdkr47qrmsy+nRoD+N0BvNJfvEY7HPWrZZow+D
         8+26kxyzxQVvnY0iqRps58Zw7vLherEvYT9EdZKPEwgnxCtWVS/EKAKZFzB0KVPL2Mey
         iVfq9sTO9KAMOiI1Iw2PDPMqshdgbooQkHW74fzq89j91jJErdS4/G30dE2nuZ+JCWAQ
         hovHeWNAdOymHkvJ/iW40Zq7nDRc+l02SPb6Dl2UytMq9gf2a1uDWGAFY84ZkXaZjqAA
         hhaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=ePSz3yCdpiavkAUpJ1uHOo39/+P4bXADZiO9Sv9XUZU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=sireZKSo8aDaDM4qWxYtN+PGPHWQtnkOSXETQrc/u5UhfY93TPckKo0ZnKUdMLjUNr
         tjIvgK88oZcPTtaCA/me2/doFm9geFKRM9FSQ6lHDu/BqWYV5V5YTDjvDtMSSm6e7aSh
         IuYMgOCddc9Oob/ntz11AmyzJIYQvzvSSq5QDcnMenVQl4o0jVXo+UG8EAd3zXrHU+Qz
         NJWF4bnY9j3wsKswEeQAuv7ei0/L8aPA2MYonoDzsOjEFXyvlC7pfa90L07amZOPiP0b
         4J/1Tl2ZjRovzG8ablez/QHDYQbJabCqs5z4J2/V/YZ1314bqOt6/jSPZuZdwmHUdpfH
         /J8g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44038b671f7si91840481cf.634.2024.06.09.18.13.38
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jun 2024 18:13:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-568-OmkhgUuUMbK5Ss86c4-Idw-1; Sun,
 09 Jun 2024 21:13:37 -0400
X-MC-Unique: OmkhgUuUMbK5Ss86c4-Idw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3414319560AE
	for <blinux-list@gapps.redhat.com>; Mon, 10 Jun 2024 01:13:36 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2463C19560AA; Mon, 10 Jun 2024 01:13:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 223FC1956087
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 01:13:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5458B19560B1
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 01:13:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-257-Po9WOxUrOK-46hXe_K1jwQ-1; Sun,
 09 Jun 2024 21:13:32 -0400
X-MC-Unique: Po9WOxUrOK-46hXe_K1jwQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4VyDMQ5XDPz19TS
	for <blinux-list@redhat.com>; Sun,  9 Jun 2024 21:13:22 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4VyDMQ3syXzcbc; Sun,  9 Jun 2024 21:13:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4VyDMQ3pFwzcbV
	for <blinux-list@redhat.com>; Sun,  9 Jun 2024 21:13:22 -0400 (EDT)
Date: Sun, 9 Jun 2024 21:13:22 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: likely accessibility defect in archlinux latest iso
Message-ID: <15d281d7-da29-e92b-867a-56ddf01fe833@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

I downloaded it using a torrent and I used:
transmission-cli -er -m -v
as the prefix to that download.
It's possible to do the whole archlinux installation and enable dhcpcd and
espeakup and then reboot and all that happens is silence after the
speakers click.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

