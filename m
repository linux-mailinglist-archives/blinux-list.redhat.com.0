Return-Path: <blinux-list+bncBCVPTHE7K4INHCOFXYDBUBAEPKPUS@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 09867A5D812
	for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 09:24:53 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-47686947566sf55165681cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 01:24:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741767892; cv=pass;
        d=google.com; s=arc-20240605;
        b=AUOq97vQtPtRr/oc2xSeFWu4aeAZtJVAn6NLx5OIGU0U41WUD35ispMDkEulS15kQh
         ZSlUN1Nj3M+E/G7xwuQySlYw1yxsfxe71zlyz+x5o6i7TlXoQr+aYzpS/RQIHi8I00o8
         O74/P518rh3aRTKnEtjcbfJQD2PMl3IpfuU9eTn02lNUHpAIcfnm/fn20oHQrgGu2Duv
         vn+7Ft9MI/GPL+GUBvp2X1Wawo0aUeIBgEYe3mAnHFoWWBZEM+JB2lQYsCYl8Lzc/WbN
         eNgX9+aixO/ASSUQ25YPRb4dCWF2pa1DHHw9CeNzdK1k+MkVnM9EhSzFzS5BJO/pPmqL
         eiaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=6ArujQXlY4QXEQyZE8kUxdYetl05nVZa0j70J0/IyP8=;
        fh=iOq0O5zVZZQf3jLKfpaoICZABx8HXOeKOsHTTWSsg+w=;
        b=eIGtCUDyGSXMpdSyCbpJ8jFd46fkWI1XWQf57k4kxagtwZt2tkKGr5a8Qg1cJ8TR4G
         Td5rKBgTXUE9ypp/d2lmjflr+C9vTAazkwVvl19VE2ThjjKMqc/ZX+NR4sOaP8K4BrB+
         9kvquLmGuYGGR0O+Ga+pbHLP+JMx0sCK6EiV5NxKmIIClj0z+D9JKDfebo/OEmz67eYA
         sDJHdfA7Uvpgy7No2MDOGLow7LefVKZK+T89Rpp5uRdB45q5/bioFWl9VujFH21pmAN/
         De4pgum7fOc/6zZ7bPDCuldXRkyE2/1gm0hzaqu1xXGQncaxxxJa7bzTnr+YWd1afvwf
         m/jQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741767892; x=1742372692;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ArujQXlY4QXEQyZE8kUxdYetl05nVZa0j70J0/IyP8=;
        b=bUtYWogeWHGRaST+epN6cB7P39YCUBeYql+GAJsxkQJ0zHSPiRV5X26pLdiHKcUSm6
         Fn+LImD/g8wOI2PBBvL5/iXK8ft4bn/w+mncWWaGeOxAOBDkgGE4XHWJq27DaUXTLCtA
         Svc7ODgcQopq+F5/h1Xt5uUV3VMr0VGSDonUSjphmvrVQ4JNXqGTCbSes2/+ANBjMrpx
         s/+0J4tMeEThhbbX8qIlmYoxG0CoLmO5Bs5yuiM3s/2XH1XmrYDdfydW+wbo5dNmUyz7
         qK2MCysVIkujc+uYdkirlJeiUWWGZNxzQs/XOv3IpYVVrNuSt1hEoty2N7pJtdRxEOxL
         2gLQ==
X-Forwarded-Encrypted: i=2; AJvYcCVTfwE0CXZz3TfpwYLdfCmqqwGPMC1e5nbJ5ldVuP693GZSP1sISX1FZQc4jf4NOaNskwWITA==@lfdr.de
X-Gm-Message-State: AOJu0Yw+Wyxdc3Yu6MNqqf/g3e2MfB+gmlUDy6r6R2uxLszW1zjg+nki
	WMlKptRU2zK6KpD/q6svyb9hAmyTikpOa8Yfr08PX4Nlrk7kXkVa8KefDhf1Ly8=
X-Google-Smtp-Source: AGHT+IEnPF3xTlDmFAyYtrVOxmJo7smZiMtihFo3DImv8w2TGlCGH8g3POw4VsdiMhSRPGw70ekdKA==
X-Received: by 2002:a05:622a:5d0b:b0:476:7873:91ae with SMTP id d75a77b69052e-47699610ef6mr76499211cf.34.1741767891930;
        Wed, 12 Mar 2025 01:24:51 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVEwEBHFQCso7VcBZ+JmgRCczHWUp3r8tsP7R0B5sxLMZQ==
Received: by 2002:a05:622a:c8:b0:476:9198:df22 with SMTP id
 d75a77b69052e-4769198e2ccls36962601cf.1.-pod-prod-02-us; Wed, 12 Mar 2025
 01:24:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWItcJqp9RivAxvuANg1n2qFeQynvw9H/yvbFOsdNlelbddSJ7LRaMBTqmw7xSA95AuTz1HSzHCe8Fn5Q==@gapps.redhat.com
X-Received: by 2002:a05:622a:a:b0:472:bbb:1bab with SMTP id d75a77b69052e-476995085d9mr81872221cf.24.1741767891174;
        Wed, 12 Mar 2025 01:24:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741767891; cv=none;
        d=google.com; s=arc-20240605;
        b=FpxW+wtyDZisl9a67OnLHjjVX0TRssFNEr4HN/T9DW26hiyFTMQFW7fJAxzpPW0ftI
         bDwkjkFJ+YQwD+gq3xHHS5WYxdMHnF02zADA5Kq95tZzedC/uL+lfjDlwGPlnfvRrwg3
         puSvEw9NnKkM/v3ogTGT86pz2Z/HQCO6lRIUkKb692De8c+HzNZYgA1LgyQveIrkVTvE
         KhZcqmYutxTc54CtELaVwBc8oMgVMV5cX5gpET95CxplOH1UNqNjSS2nMFSDEVcfsljQ
         DJjumg1dV5/Hq+oujyQOzNIqT2lpPxxpgI3QAAipB5zP9F8Zs+97tew2H2fAZ64qjXVZ
         RrVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=6ArujQXlY4QXEQyZE8kUxdYetl05nVZa0j70J0/IyP8=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=it60+njc2B4LbbC38cJVR5/dGhhP1T6ec5q6lvNjUtTLVxPaPQ4fd/t1l2zJ1rxElu
         N32kMLSpk6i6HyfzT2JTV3QeT3GSpH8obhMue7Piyg3RFFR84Ui9JaztECReHN5Zu2UQ
         xmoxyEPMC69ihWqifpYjGM8fdMEWIXjSgOgyUsBI/8NTWaAGZi8Hd37Kl798lwSjl5lV
         DpRkWHecuTOUt2/pIP4tMsynswwQtQFDN/G9IQ+9RtDhLFW6PrsIqSLsQ6viS8Bb3xe0
         utkYV4/p8qGFLtRRdME9O2Gk/XrRgpKZitJ8Bgg+YC17GO+xc8E5fLHV04yUuS7LGnIL
         mAvQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4768f21d232si53856191cf.394.2025.03.12.01.24.50
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 01:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-208-MJ61uaQqNDmwZCzuRxgj4A-1; Wed,
 12 Mar 2025 04:24:49 -0400
X-MC-Unique: MJ61uaQqNDmwZCzuRxgj4A-1
X-Mimecast-MFC-AGG-ID: MJ61uaQqNDmwZCzuRxgj4A_1741767888
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 797D21800260
	for <blinux-list@gapps.redhat.com>; Wed, 12 Mar 2025 08:24:48 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7616A180AF7B; Wed, 12 Mar 2025 08:24:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 727C81828A95
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 08:24:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9555F195608D
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 08:24:47 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-275-oLUOiRlJNRKHG_T9h5lj1Q-1;
 Wed, 12 Mar 2025 04:24:45 -0400
X-MC-Unique: oLUOiRlJNRKHG_T9h5lj1Q-1
X-Mimecast-MFC-AGG-ID: oLUOiRlJNRKHG_T9h5lj1Q_1741767884
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 475B940508;
	Wed, 12 Mar 2025 04:24:44 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 120131001BD; Wed, 12 Mar 2025 04:24:44 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 0FAEF1000C3;
	Wed, 12 Mar 2025 04:24:44 -0400 (EDT)
Date: Wed, 12 Mar 2025 04:24:44 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: youtube dlp?
In-Reply-To: <cec0f749-6186-13ba-0d9d-b08e9758f5c2@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2503120421580.3555895@users.shellworld.net>
References: <Pine.LNX.4.64.2503112329560.3552976@users.shellworld.net>
 <35d3aae3-ad01-1f78-a426-dec2332a8f5a@hubert-humphrey.com>
 <Pine.LNX.4.64.2503120105090.3554148@users.shellworld.net>
 <cec0f749-6186-13ba-0d9d-b08e9758f5c2@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 3LOgPNfOgugb72_SQ_pnWB_A6VLazM9SPEmfFYMEnHE_1741767884
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xxJDO7trPEH4N2wtG4SrqzyJCbQGEkA6kfYU_KQgqIg_1741767888
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

That is fine for you chime,
  I have also asked my  yt-dlp question on the main list.
It seems the program automatically chooses the download with the best 
quality, can be configured to automatically download in audio format and 
so forth all from the command line.
YouTube viewer is not at shellworld.  I must work with what is available.



On Wed, 12 Mar 2025, Chime Hart wrote:

> Sure Karen, I understand your concepts, however, youtube-viewer you have 
> several choices, listening, watching, or downloading. As far as a script, 
> well I have an L Y N X external which will either play a highlighted file or 
> download it.  I also have an older script to make an mp3 from an url from 
> youtube.
> Chime
>
>

