Return-Path: <blinux-list+bncBDYPVTOXSQEBBUON5CZQMGQEJJV6PTI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D65D915C0C
	for <lists+blinux-list@lfdr.de>; Tue, 25 Jun 2024 04:09:23 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b51b660c27sf101705916d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 24 Jun 2024 19:09:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719281362; cv=pass;
        d=google.com; s=arc-20160816;
        b=YQB9NKKp2GXtfos2IKxwAadtB1ClunxnhE9eR4OkUCeoJRv3V4DPthFnRocH7AzNrT
         NzeUr6erdfNs6I0rXOE8OAzEHoMvMXWVUPgwSaqBKdaTm9dWoW0g/gY2zuKmpOcVH6VK
         evR3ZKfz1klyGliIzGvPiGswUPS5Aiw+iiJqDJ+HzOyUx0lXNn8MkTUe6KpuRnLSg5vV
         fVEhjKT5iQPDDTx6akHhhCtcMjiAtRRicD/CNgT7GBRYkmYwQuQmMYIBI4D6Tq7ar7k+
         7o/Lrxno82fepBfxm+0in1S21Nowy2TY4lg6glHfmckY8vmeZycnSS94mL0IhdURRzJ+
         5fqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=tqTpiDXvFkpRUcK7kdDnoJxrNe+JsR11miCqpJt5C6Y=;
        fh=VFNJE5QfaeAt8WlLXGlErxBkrjCrwpn6TVQZtLv3zYg=;
        b=ftUYOIij4krtQgItbJPbVDCnH8BSoY+TPIF+mVyFpSloV2u/YT74iyQkC+4XLRE/LL
         z3RIkJvvBJmnUuGTF7j6L6dMa27qvW1VnJSvfvxinxWOqnTv/KYatXnfwOJWnkDuq3aQ
         rtcgM3xgOLwhhbKSTe6oGs2Br4E1LYmbYX4lltpwmLipXGZb5gb1wvEzjMoe85UtFexU
         sw/ASOf1gstQUCJemz1vcRpD2WPuUYntKmvQwI/OR80JI1XY+C1cI5v6Ucnjo6KSQJ83
         fyQV6NDtan0Bsg7h4FJgmW115lNLK30xdves6MQ4mpAQf2xUZdUWtKButszv4kZfgsAz
         OWgQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719281362; x=1719886162;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tqTpiDXvFkpRUcK7kdDnoJxrNe+JsR11miCqpJt5C6Y=;
        b=NPwTncFmTVdc/5nWIO9XcPS+yWnIiFKwnx2o8OvgFDgSuPAGWPUJVbBGBYjWfRkuYD
         iW04BsEB2HCtimiRT6VUqqw6qWNjeSidBz13OJljnifyi2uIfTkY+C1ixNYpq+4b/oKa
         92I8kFJ3tgVEQeXz9z/4YxNBxlrC/i8+bKTmXvFtrS1cAsWz+U0ckvP801g1lD5bCARN
         l39GMfQjysguCHmWV1jfITUrThlRlO+wK1LK/aJbh+3CCIDCnXf9VV+n41eVsADhHcLV
         htg8S+hjDvKt3LU5gi4PdKIUGO1SoCIjmDjqn2+cwCVLYyTQ6gHcyICxz+U+KKwLpofA
         hqdA==
X-Forwarded-Encrypted: i=2; AJvYcCUMKLBs9KHChN/gtzz7l7JzPKk3T8qVOQytJ0ALcQTXJdmECo3nWtx1DTEjxT99ekIGpNlrDQqAZbhG8fHeknPRKpUc+F9Vocfv
X-Gm-Message-State: AOJu0Yx6Oiyx4iiPrxMPa5xDYy9sO9uQQYVo9ct/9W6rwNDPOqfIAeIC
	FzdLyJdi3hxOmln+1mkfELEdtXFfM6TQfyNGVlXEPdkrPgLOp66erhIrZ7E1jJo=
X-Google-Smtp-Source: AGHT+IHaLN4LNJ+/O7kG8nvQfYpqykKJrtK5OwISgLpIJbrFY14dWUy0dL3vT8+ssdBYv3MZc+MoXA==
X-Received: by 2002:a05:6214:29c3:b0:6b5:2be1:cd6e with SMTP id 6a1803df08f44-6b531fceb23mr118441996d6.4.1719281361626;
        Mon, 24 Jun 2024 19:09:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:3290:b0:6b0:7d67:d552 with SMTP id
 6a1803df08f44-6b51dcc262als87881396d6.2.-pod-prod-00-us; Mon, 24 Jun 2024
 19:09:20 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV9Icv38bQ6r8RHlsxWDKgBdsX8UKqrdf4TWUoaAOR+4l9oE59zC96NfZ3AMQofCGYpAd8g6TS0VPW1HuHiyzlK/iuBJIfqav8DAX6V
X-Received: by 2002:a05:6214:805:b0:6b2:a333:2a9f with SMTP id 6a1803df08f44-6b563682dc1mr38689926d6.23.1719281360487;
        Mon, 24 Jun 2024 19:09:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719281360; cv=none;
        d=google.com; s=arc-20160816;
        b=ElaoOtKmzgf5M6q6ISRlo/Q2T0vpU2IWRRky+g/NUGpeMhmTd3SW+DB0eLOi5rG6KA
         AQPyKqbmcdxOJZ32cWHnwQ/6/6Z+EbmYvLX1WQ2Rydb2dVGOoVYy2vYWPzy9wa/2eN+s
         Co+tpsAjQRNE8/S/V2IJCk+AfeblQ5YGy4HJrhmeE9HDYPu6XPCwlFtO4xLtBL3aExqW
         3AgUFTclqam5hzc4UDJ+49UhFsRBpq5f8gmdYSx8b8s+BO0nHpLITa52Z6lVvHdQiuLU
         MqK1238esSGNltrgu/4UCc2fHdjgSahH9SZzuAmsb7sHu0bSRJgJ7M2D/4efeJvvMOMK
         bizA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=/whjjW6hAJ9sZj4U7ZUG0vbIkzlxH8pbGCt8wsmwsls=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=HOtAJmmjEOrLSKHs3f+sacuVqcFGSgIp78gMcJqG+KtaAj90lgb4Nsaq00mkffFmy5
         APoNup+gLD8f/CdRbwrBU2J4CAdXsQqkodxPBi51bGeHcZCRB9bWkr2ojZVuN+5HRKtL
         Eh8Y3aFRze+eIpjOzQBtkzaEsIiDdKLD2awcTlKYpQdYPAgHi3KB7AIeQMIVCL4Q4qzE
         i0nS+frMO2GMucfMsa15+NnjMmg99RYAMlsJ+wfjW14YMvw7FBtcTP8MgO1TROiIPs5H
         ILqH3+YpwwEAFoglL31zfMrOUfH93c5AkyCez0on+3ZJBkGOqSuWO8mTNR7z00s5GOBb
         j/XA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b54350c4e4si51720646d6.307.2024.06.24.19.09.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 19:09:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-294-elzGcyObPKG8hl3FgnyfDw-1; Mon,
 24 Jun 2024 22:09:19 -0400
X-MC-Unique: elzGcyObPKG8hl3FgnyfDw-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6320F195609F
	for <blinux-list@gapps.redhat.com>; Tue, 25 Jun 2024 02:09:18 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 530871956053; Tue, 25 Jun 2024 02:09:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 50BB01956051
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 02:09:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C56321956089
	for <blinux-list@redhat.com>; Tue, 25 Jun 2024 02:09:17 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-97-kNag7OAKOt6NJk_UpmGMQQ-1; Mon,
 24 Jun 2024 22:09:15 -0400
X-MC-Unique: kNag7OAKOt6NJk_UpmGMQQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4W7Sty6Jk8z4NG8
	for <blinux-list@redhat.com>; Mon, 24 Jun 2024 22:09:14 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4W7Sty5rVJzcbc; Mon, 24 Jun 2024 22:09:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4W7Sty5nNNzcbV
	for <blinux-list@redhat.com>; Mon, 24 Jun 2024 22:09:14 -0400 (EDT)
Date: Mon, 24 Jun 2024 22:09:14 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: archlinux installation
Message-ID: <fb8e580f-7545-54ca-58fc-e4f5d1b7b43d@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
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

If using archinstall, hit the gray star key once to turn highlight
tracking on before starting up archinstall.  When you get down to the
choice offering a sound server, don't do it since whether you install
pipewire or pulseaudio both sound servers give you a silent reboot without
espeakup running or if espeakup is running it's running very quietly no
matter what volume you have set on those speakers.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

