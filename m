Return-Path: <blinux-list+bncBCVPTHE7K4IPZFHVXUDBUBAMI2MSA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA96A43459
	for <lists+blinux-list@lfdr.de>; Tue, 25 Feb 2025 05:43:41 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e6703ae641sf44424626d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 24 Feb 2025 20:43:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740458621; cv=pass;
        d=google.com; s=arc-20240605;
        b=Adj4E3tu8SBaVXwDBA+YFtlRnLkQ7fLZBFVE25M2raupw16SRL+m9KhL2T5nlGCjo8
         8TKIV3GMgGksSHihqF+nl+BdNgMMSr7EwU+z5mzhcGNStjymfrjFDmz5SElng2YGKlzA
         XR4F7VtZECxkkrSSu41O6ioJVzUWr6SM9qr9ejw4/51RR9p8VgMAQ9D7/M0Db8AWPMSE
         1lwpgx29hMOv2G6YtVvL7KtWQYdLXCeofI2hkfTumzIgX7UENM7mXMOUoY4hLiajdykR
         dKh3W+WADX0THEh5GENIzCk2OmvDAHa9ajyLFFxaPr4Cspp35Dmu+i7WC4m00Xii7kXl
         hcTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=E6KBv3pOKz+EZ/9PZz8SXy4Fo5MXGhQ5iTJ+NO9GVsw=;
        fh=70hLzYMnAuVoEzF2sqe3gyoT0xjREBeLfJKHHvhOIDg=;
        b=kBJwnipYBF78TFEDMg+U3JFGnQDM5sbkS0yvce/rxcflY18Awg7wKDb70+aFemFTdh
         3Crdd7SJ59J3a8bBVJaJZeC3QfFwdB9HMB4ad55x1Br+udqX6clfmKOf3ICNZPMUi0Vg
         0jb0XWEsYjdriqVfXqZ2yxwiyd5W/EITZb1o1Alv5+R2bb1+yF4J6kr24FRpnCJAzBXM
         AQpUGibMJVM/xTs5hjzj/jZ+3s3cfvlp38wVEGmEa2yxOBsngEYIor29rfDccMw6sxr1
         5qTteor7eMndpcFYBkPaYlfkR9onak6kFNeGMuJHRKsBsVzmN3Iy1nrZvLqn8fgw6U4M
         heYA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740458621; x=1741063421;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E6KBv3pOKz+EZ/9PZz8SXy4Fo5MXGhQ5iTJ+NO9GVsw=;
        b=EEW62fDlGJHjgNqdkk+zdYa78nB8tc9zs9DJ1WfQ4zMLzPsk/QU8VLWJVGcVPVPvrd
         RfOd29G9ASWJnGP9zfpL1jXA83b8YijuzJaAv78pTJpq2evYAGqhi7+qU4WFoBjiRKJ1
         pG4jVDi6H6W79ZlHYprKMcLnlv5AWyatcrcHKTfh2wFcq1vSQYtvs2RmvTfQqG10p39z
         D9bDcKYKMoNYi758F/bjsml0SmRo9x38iSI4FEZOypYYipJljbYxORm65OPPKLOpkqM+
         2gRgbk7CNlvHs28FD19CwLgOwSD+bjn6//+WPhr90hJJx0nXiAj/df0uRgNS9xXRGl9G
         ErYg==
X-Forwarded-Encrypted: i=2; AJvYcCWlen8NIGqLOP8rfPv6RL5o24oOzZqCoiKcbsI/BL6jm+2CM5g7W+xe8qBCNTUjiiJY8BIcjQ==@lfdr.de
X-Gm-Message-State: AOJu0YwndNm56CRNfzfNDhAgZpA6oaV2MQMJp69i6QFHh1AAGm6AoJWK
	5lGdnCtZ85fgCJm11BFcF9qtIZNgSLJ/+cAwga4IomoPqPUlEfj/WizjyZ+p1ik=
X-Google-Smtp-Source: AGHT+IGYWAUaisdG7AIXj3eQUcsOUi4OygYrSM2e4Qo6jKQxqTflv/1SRSOMlVzcKcAXAUur0rbLnw==
X-Received: by 2002:a05:6214:27cf:b0:6df:9771:978e with SMTP id 6a1803df08f44-6e87ab9fab0mr24070946d6.34.1740458620854;
        Mon, 24 Feb 2025 20:43:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVE7VOYHpESv+oRyLuT+L4iUYbbwIXWM0XjDkYxdkB8oQg==
Received: by 2002:ad4:4aea:0:b0:6df:8164:cdb0 with SMTP id 6a1803df08f44-6e87aacf982ls8480646d6.1.-pod-prod-06-us;
 Mon, 24 Feb 2025 20:43:39 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCU+UEv3vWC8N1ZYXSHmU7bMB9Dhi0bDt9zPjIMqkUCXGP1eQxX565g3whkvY757EG/XbFMraGR9JUnZ4w==@gapps.redhat.com
X-Received: by 2002:a05:6214:2602:b0:6d8:5642:d9dc with SMTP id 6a1803df08f44-6e87ab2f6c3mr24651096d6.11.1740458619645;
        Mon, 24 Feb 2025 20:43:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740458619; cv=none;
        d=google.com; s=arc-20240605;
        b=QK2fOK53sLaUkio8Pc6lvj3c3gr5oU0ifHtUtVSEiOVeF86Re1wmqq+izoLUqevL2T
         oS2J5Je1LDMPeax4y8G/KHIfXrkt9l8Uulqw0jWLflbcWVeXiLY3ybuwT+5GNsHynATT
         962VNx7IkXgFtfQjJNZyQNheFphKbIcnJN5Ovwvsv44IkBnbhjgcgyeX84Rwjq5cBULz
         E8I6DSl700SKYqB8ZuDxAUxJvu3hXoRDChXAnNEsaTIZ9mOe/Llh8UuhLm53wNn5wf1O
         SfONHqrL4Ho1F17k7T7NuIrdPpqVQYqySdNPXmjUO3u42rIHLXaOWkMOzeV+n/AYqk/W
         T52A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=E6KBv3pOKz+EZ/9PZz8SXy4Fo5MXGhQ5iTJ+NO9GVsw=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=ZBu9khq5A9mnWJ1X1kxt/oJ+6/zop4H35RsAooSTsL1AfrY6iVlMmfwBPvch4GWB8T
         xE8VmAi8t0SbIdHzwdodNUzABHRPh0t1Nkb2KacIkvxuLBa8dsgPoORhh9IxRAP1FqEd
         G382A2Jrpfqjg2KvhLq00ZNx8+vdrcpKoxhf9qSqnVafucCXyNpS0Nz1J8hNlLnz3JF/
         ERxJ3ndtzGI/V9Yb3OxHrqNvPscC6CcJarrqJ5MPji3Q5qa3JI5q6F08jXeoFyt4kgNA
         LZh4Hr6uiPEJf1l3sxg6R0vIAZLhopab00fcWlmJuLG+JJAiT/jTYayXHbaLlqvo9lDL
         3fyg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7c23c24d395si89000785a.159.2025.02.24.20.43.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 20:43:39 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-588-ntYmp7aUOeuJlTjoubpOdA-1; Mon,
 24 Feb 2025 23:43:37 -0500
X-MC-Unique: ntYmp7aUOeuJlTjoubpOdA-1
X-Mimecast-MFC-AGG-ID: ntYmp7aUOeuJlTjoubpOdA_1740458617
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 12BFD19560AF
	for <blinux-list@gapps.redhat.com>; Tue, 25 Feb 2025 04:43:37 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0C916180035E; Tue, 25 Feb 2025 04:43:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0A2B71800358
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 04:43:36 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7B6E619560BC
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 04:43:36 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-595-wE5Fo5TfPqKcphU0eSrQ6w-1;
 Mon, 24 Feb 2025 23:43:34 -0500
X-MC-Unique: wE5Fo5TfPqKcphU0eSrQ6w-1
X-Mimecast-MFC-AGG-ID: wE5Fo5TfPqKcphU0eSrQ6w_1740458613
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 3761540508;
	Mon, 24 Feb 2025 23:43:33 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id F02931001C7; Mon, 24 Feb 2025 23:43:32 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id EE3C910008B;
	Mon, 24 Feb 2025 23:43:32 -0500 (EST)
Date: Mon, 24 Feb 2025 23:43:32 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux command line and youtube links?
In-Reply-To: <c2631977-01f6-0918-c455-7eec1264a3cd@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2502242342130.2986780@users.shellworld.net>
References: <Pine.LNX.4.64.2502241937140.2983544@users.shellworld.net>
 <5fe25c77-e36b-c8e2-d327-fd1602f0dc7a@hubert-humphrey.com>
 <Pine.LNX.4.64.2502242011040.2984313@users.shellworld.net>
 <c2631977-01f6-0918-c455-7eec1264a3cd@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: iqACWq2RBMm-91acPQmOX1g-NEVidjYWM1VdBHfXMps_1740458613
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: S1QgbYLK8HgpqhtjHn3mWHI8v5w8pbXG4uJ47oGXLIs_1740458617
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

Hi Chime,
Hopefully those ideas will help others, even if not related to my goal.
Karen


On Mon, 24 Feb 2025, Chime Hart wrote:

> Hi Karen: Youtube-viewer would help if you didn't have an exact link. O-and-1 
> more tool I want to mention-and-that is "urlview" There are times just 
> looking over a page will not show valid audio/video links, but again feeding 
> a page through urlview is practicly like examining a source-code but urlview 
> saves most of the heartache. And now here are my L Y N X external entries
> KEYMAP: ,:EXTERN_PAGE           # Run external program with current page
> KEYMAP: .:EXTERN_LINK           # Run external program with current link
> EXTERNAL_MENU:http:mpv:/usr/bin/mpv --no-video --really-quiet %s:TRUE
> EXTERNAL_MENU:http:yt-dlp:/usr/local/bin/yt-dlp -o '%(title)s.%(ext)s' 
> %s:TRUE "--prefer-mp4"
> EXTERNAL_MENU:http:youtube-viewer/custom:yv-custom  %s:TRUE "--prefer-mp4"
> EXTERNAL_MENU:http:urlview:lynx -cfg /home/chime/lynx.cfg -source -base  %s 
> |urlview -:TRUE
> #EXTERNAL_MENU:http:reader:rdrview --disable-sandbox  -T title -B "lynx -cfg 
> /home/chime/lynx.cfg" '%s':TRUE
> EXTERNAL_MENU:http:reader:rdrview --disable-sandbox -T title -B "lynx -cfg 
> /home/chime/lynx.cfg -assume_charset=utf-8" '%s':TRUE
> EXTERNAL_MENU:http:safari-spoof:lynx -cfg /home/chime/lynx.cfg 
> -useragent="Safari" %s:TRUE
> Back again live: Those last couple are useing rdrview to hopefully just show 
> an article without all those tool-bars. I also had to do some editing, as I 
> cannot seem to get more than 76columns on a line in Alpine.
> Chime
>
>

