Return-Path: <blinux-list+bncBDYPVTOXSQEBBD4W7G2QMGQEMLC6ZJY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF4B953A40
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 20:38:09 +0200 (CEST)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5da3812e934sf1101393eaf.0
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 11:38:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723747088; cv=pass;
        d=google.com; s=arc-20160816;
        b=xY6OiKOtiUBMtimvdggqYBPMXOMCWuUhAw0yRXG31oNUfo4R0Qxmk7oqP0Y6SZo4sV
         T1VVKFOHsfsbvloMwEXihedmL/6Qnloj2OfnbVwlH5djUtNThzH4mpz5qgBj01T9kweU
         fP5I2dx+R8Kxa7hFNY0myU1bU85pxLxyRw84dDPxXiPTFsLUD7YLKtQLkAjZFRGRbf68
         P307FNyUui6YPStrx0L28Qkaq9YxbbRlEeC5E1jilMbudp65IS4iwl8dXGva4nJFFgBn
         I0iLCYjGVRLSH7ltOW4UyJiJ7HVmlsMQCOOM1VS4PVLDfweWqjpRDjwLyXuadAfIertX
         UlQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=0/3+V6Ei7J+QJrNgqveWm6S8Os++rCTcw1pok3/MddE=;
        fh=ulqWB01Tr0a7mrcWoGFGa8DziVvLLz5zLKl8LAgJt+c=;
        b=nEnNfs9C5qTJFhc/coT4H5+97ARfDEwPQ3zIH1JY89Jl9IkswAs/DKpAHZFrVrSTEN
         Eatr4sTjNndMgWoNsP8Dchm0ZmdJwstLVBlIdlGlLQLSFRZhFCt4ABIiQJBkes2S4XIX
         iOGQO+4H4LzaM3Dt9IFmrbR1FFCJHKbAzmBwbNB2fsLrUY1QHS2KnSsBexffFpUSYSuo
         CU2ynMbSDhdf/zu9fXvpq2rmK3L8xrzf/TAG1CjOLGcUHlUTXOMsWxfbggyys1Jal+bx
         lqJBEfWDZLtE6+c0X79skxThAE083Ni07dZ5pUr9OiaFXZ4f1G/VhGwNjw5xDnARyv82
         qz7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723747088; x=1724351888;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/3+V6Ei7J+QJrNgqveWm6S8Os++rCTcw1pok3/MddE=;
        b=G4kM0nurrUYwjEFEW1Jh/uuvUn0CPl+JDlRpVJiHPDu2TAZaleGagMeBeTUBklGiGs
         Y8PxiBxlkSkUGtKrjFrX4OCQl1GxiljHd7r2eo7ruEr4frqOjruVlW/0657gaQmacUk6
         KWFo9G8TAgNQbl6MiTSkYX1pauanf5b9mJzU588S5VdbnVh5JsEUunc09f9/3HaHHaMf
         ng2GVG84wKcEDKjWvzEtkWekNiWJVO+3G73KU79mFJzogPHy0XU4k7reDs10OW+OFzWO
         dC3AD7sbKMrZ61hCsMr0fIYWMp1bGA9Dmk9Kpt8DpTskb29sgVD9AJ8j6XdJk6o+AJIe
         Gn6A==
X-Forwarded-Encrypted: i=2; AJvYcCUfiiPXpgA3F38qGlNOO7QwuL91Lpza0nysJT0iX7IcU7z1OcjT0n3kIS43MR5wIdSM+qYvU/UB397bS2Qz26viQp6VYcAu5aat
X-Gm-Message-State: AOJu0YxAmctB9Vdzn5vV18YkzT8x1y8kgXpNhnymEyIZoLRhFeE1/vDF
	t74Hx5xJ8QlrcAH0gAe6axHJaX0GKc3UZx3+dIuJFzLww8c/yLBZn46cSF0hIA0=
X-Google-Smtp-Source: AGHT+IFIQ9GEcvyT7ujYXYo/BCAVJMKZN+7lymcPdgbc7DlTqzqhlj3MhohCvMapjiWe/2Qbk+QA+A==
X-Received: by 2002:a05:6820:2212:b0:5d5:6733:ca74 with SMTP id 006d021491bc7-5da97f537femr743653eaf.2.1723747088099;
        Thu, 15 Aug 2024 11:38:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:8648:0:b0:5c6:92d5:d6be with SMTP id 006d021491bc7-5da88a8942els1408378eaf.1.-pod-prod-09-us;
 Thu, 15 Aug 2024 11:38:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUOs9faMxMgEBbV988TYmm7PFRvg9N9O4cG0YbyNb4PsF1h1lKXiI7o3yH8XKNMiUE6SPnTwF9355MAbbN9HyFp9IgCCCLSl5OCKEmx
X-Received: by 2002:a05:6808:6491:b0:3da:ac85:3bd5 with SMTP id 5614622812f47-3dd3acafdcbmr331589b6e.8.1723747087517;
        Thu, 15 Aug 2024 11:38:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723747087; cv=none;
        d=google.com; s=arc-20160816;
        b=M2q85sMAu0iMUKjyOazNKyACLso4yj6cECNaS/vaJXoIeoiuq9uAB4pac7yOVwLoXh
         abzjjRVFpRdZbaaJnWRJXB3sInVLZuri+p8t8Tb6QukwAS7CTqrtls7LNhwP/AO/lFC8
         0x8VAVLyfJHBS8Oq3NZsKMzk2POHsPkRqG3Gv20O6lUYcPQUN2Yg1TMktPAqu3gQ0OJQ
         50MNmdEXCWSwCqy4CC+uGVGgljAnmtwmxsuUkTD8S4aedfIQu2N8LAiP2lsmohqhIn/3
         JhJYGONRLyPpJPBBMWkPdovjfCTWvtP5wV+X+dtd26EYr/zM25elrasflWRpnrzKb0tx
         4pVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=M+rF46IrlkAhmzR+oE6OMUZReIEoMGF2rTPJS3cZ3hE=;
        fh=h+avxhsP12CKrdN8dnqqKmbrfLptYfKr1D2HayTsjac=;
        b=IwzM8roLm05aXRuikwnveuTUZwefgsNpyLaq0EwMNu/+LJBQVxsquZhIaPZ3k7iTFb
         Bi4Ed8Y+nI1fs7lKhqz0k4yOmz9xvvEjc+87l3aeb7loGq24Mbno896HBCiNru6FOdIT
         23iOSUAMesfx1WQ3o3rXnokB01fjHo3ak1DnWGbkv8ifnjDa/OWGoqLjpwDZbnZCv5th
         27Hi/+KsP2id94UR0aYNi29QutIHFEOjiLchon/LN9SKBl3OUEWFODW6R4Ryqj3k4Gm6
         QIy4yoc8Lqw2x+3J+7AM9SDoPB/Tq5x4zlutJIqp5IV9ikD8CinI0DNkl1EhJ1psN7tX
         j+gw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-45369fe76ddsi24874881cf.28.2024.08.15.11.38.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:38:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-346-N_9SD_vwOdm06vKez7ns1Q-1; Thu,
 15 Aug 2024 14:38:06 -0400
X-MC-Unique: N_9SD_vwOdm06vKez7ns1Q-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3F7861954B1E
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 18:38:04 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 3A5B01955DD8; Thu, 15 Aug 2024 18:38:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 374881955F1B
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:38:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7658D1955F42
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:38:03 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-617-AAJR9FvJPmOwoEqqh98tJw-1; Thu,
 15 Aug 2024 14:38:01 -0400
X-MC-Unique: AAJR9FvJPmOwoEqqh98tJw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WlDQJ5hxfz102G;
	Thu, 15 Aug 2024 14:38:00 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WlDQJ5MDYzcbc; Thu, 15 Aug 2024 14:38:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WlDQJ5J62zcbC;
	Thu, 15 Aug 2024 14:38:00 -0400 (EDT)
Date: Thu, 15 Aug 2024 14:38:00 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
Subject: Re: emmabuntus info
In-Reply-To: <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
Message-ID: <da16f19e-3d01-21e7-5f83-1f63d29f7965@panix.com>
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com> <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

Very accessible on laptops that have been around for a while.  Another
contact tried installing it on an hp machine with a really new wi-fi card
and couldn't get the system to find the wi-fi card.
I can send a torrent file to those that want it they can run a torrent
downloader to get the file.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Thu, 15 Aug 2024, rodney jackson wrote:

> how accessible is this?
>
> was thinking about installing it on a laptop.
>
> Rodney
>
>
> On 8/15/2024 08:47, Jude DaShiell wrote:
> > https://www.youtube.com/watch?v=irjhV-oWEGQ
> >
> >
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

