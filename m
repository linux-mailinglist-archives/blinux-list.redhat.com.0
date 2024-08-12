Return-Path: <blinux-list+bncBDGI3AUYYYCBBZ6Z5G2QMGQEEH77KGA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 763A194F7FD
	for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 22:13:29 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44ffa2bf13fsf66674161cf.3
        for <lists+blinux-list@lfdr.de>; Mon, 12 Aug 2024 13:13:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723493608; cv=pass;
        d=google.com; s=arc-20160816;
        b=tCfTAGIFWO6WSJhnTTUX21NvQI7OdPeAnsl/Uh20cmGNnsEXRIBn36yW9jpqFkO4DO
         0QrkT2jxRk2WnMbscS+iW8uIdtRd4Of4NS29s2IQavHBDFt4/JPOLMALaOMhXzaOCiAg
         1PCKDu1dmXsBF4+nEUlfxZLBX28RP3VGXbpkJuO+dmKcXvIqU9wqCQHUeXCTRv0qDyVv
         ZMKWvZ3IBxDfmXf6CZ9a9iRix49uBzZKahHset6EhwzpEnP/MAYMgT2uQFPLYesU8dYJ
         SdO1Yc3Sd+zpZtraCLqzx4QiVs8fzc2zw7LU36FgI+JRhPKslvrXwVrYcmvOarnkdacW
         48aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=bof0NKPW/65S1dWMfpUiwD734mDeIV0k5SbxOCluJl0=;
        fh=EQH4B8Y2a6GyHqGQjHZRnLNOGaZt++b3ysCPYjV0Enc=;
        b=mrNbqe8IBufIpBkEI/x5NjnE+rrpneMUR4oTeSi0mz8Q8zgbzm1UO/jLMBsbUqv6bT
         7Eww28vQ7hK2Lfnj5Kb9Ao3lDQPoqcm2kczernsbsJgWwoAf5WyvXxDcpDzB+OAxwfFm
         gYh4OrCwa+GSFy5LA+ahdQZEXI2hq6eTeYU5ncr3c0HXZE4ab20CxEe7DkjyDzziiPWI
         44V3QCXMsLOtl3oLmR+b0l8xujPTbIM22xMORBt731UeiPqIbl1oCk2lqZUT6DUcF6kc
         hWMKjdsSWYHzOAh+QqJVXDEyChw0HzeswZMcjLWJJ6pDrMXYCIxzDeVIMUzJUMYcrBpd
         dH+g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723493608; x=1724098408;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bof0NKPW/65S1dWMfpUiwD734mDeIV0k5SbxOCluJl0=;
        b=vL750uaDW9O5JizDeqSByNBStf/y7NFEp8vmmlkvIOenaIynDjxFPZcWIMBEY7MTqa
         CBCyuDbMSRYRHlkI3rYKftfDEEM02vc2JfKfFL2zdWTBCsG2dawtmBEIR7UEw9CvpUaH
         NdI05I+pbsd1Kpm46A40GOz/gx94CGuTuMODp220Jgq2D2agQVQAY9orr7cQk3d5LeEd
         ZCgDhJWAWm6OOHhTEL4kOs8Hs8CT9C7LY2LbinmKbrNvRjiPuOCDHBhsEIaM7D/aKYka
         l2ElxC4XIvBdd4jGj21e5n8gG/2FjFgnBvZgawv/8TxwLRTcVadqaivI6R6QnNtW62Vg
         AQfA==
X-Forwarded-Encrypted: i=2; AJvYcCWMsBOueTTZKtXhpL/B+Jf5tiSkARuTrBfaImJDyWpFOBJERMQq3Zbfweag5JALXmK/vZexB9F/NNz0AVA+0nPJN3mp0GzlIF75
X-Gm-Message-State: AOJu0Yz7p4tBl9+3peAkD0cE/a7vvrh9GTkyVQ/uoRy8drcJT7pLWNMN
	Ty+JGEioBwjb7hJQpRitGwAC48/scrgQ1wakoxEb3Upya7YJpGdJhbgRfZy7X4M=
X-Google-Smtp-Source: AGHT+IFY+EtOeU29yUQaC+6qljDoxGN3jbJc4ZMxrAc/HHhudXcEAfnQF3ZSk3X4gvQpHjZ8LwLFEA==
X-Received: by 2002:a05:622a:5989:b0:451:d859:204c with SMTP id d75a77b69052e-45349b3001fmr13341111cf.64.1723493607912;
        Mon, 12 Aug 2024 13:13:27 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1a8a:b0:440:337d:f8bb with SMTP id
 d75a77b69052e-451d10eac9bls77903471cf.0.-pod-prod-07-us; Mon, 12 Aug 2024
 13:13:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVuAHv5h3sMBRot0949sm8cXZ8c5f9yG7DapNO06w+huEnDHh7gDb0yLpmPDqmcpMyd0L2XhaXZU3apMA2LMwzP0T/m05y4JXosHAT9
X-Received: by 2002:a05:622a:5989:b0:446:59ab:56a6 with SMTP id d75a77b69052e-45349a66b50mr18139901cf.47.1723493606933;
        Mon, 12 Aug 2024 13:13:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723493606; cv=none;
        d=google.com; s=arc-20160816;
        b=PTgOHMN7hWERlZ4dbBqPu6FSucy/mx+lU1eyuBsmofhHFT70J0Hud33Lb8HQEjAgkY
         F+pFtx95t5fYBOYJXykhqLtKZRgs2yyAWo8Jdox3Iw8v67t547lHKnHuYICbTJSP/Dyi
         xyePQ3TIDEKzxnt+rwggS1bANsyJxWuFHXBswMrmoAnE+UdmN/RDirj+FIzYCm3eLM1B
         8HUbO5w6ZU64qWCyMvVrCWUrCt9/JV/1FvDg0xqtdY94mafYxzYLFkWQ0Lt00Mhv1BwB
         tCHpJ8Eah+OQYVIlIjcAwdbnbb3r94WTZAY04qPndNpimHnfxKddvmxHywq/B5uy5bIS
         uWHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=XDn53nrCZEMFP16ukJErWRXKIsPZ+e6dJ8GnV3GkbVE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=S+/YiwdhCTwM0lZ1bXlwbOCrleubmluYbJCNDv8Cjy8MygEDdD6xoZdwS2VOWJ1zys
         +Pfj4Mz14Y/vmiKioIexduZRqJeBQXvsy2rseqnDBwbWGM1enZ2m+x44RwVIErat7P/h
         hT8dvR5NhWt88mXYPnwr9KuDOh8ToVZ+XSzyDSx8hFeH73ULz+fHewloE5YS9x0DGyPG
         8WwEAgCP7oK7lMFpGhecTn9ecaeD1jQoDM7boqQvAnBEq8wMVLijLdXkagw9CLa3J1pM
         KQ7qFSLQWJN+sJxLKlhLYJM+7xW+EqFUW+80pw9OUCD5/7N31d9TrlJVTOvRIotsdbFV
         7QTw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c1cb32fsi66449221cf.221.2024.08.12.13.13.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Aug 2024 13:13:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-691-ChuFA7YSNVei9P5sZg8aaA-1; Mon,
 12 Aug 2024 16:13:25 -0400
X-MC-Unique: ChuFA7YSNVei9P5sZg8aaA-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF66B18EA8AF
	for <blinux-list@gapps.redhat.com>; Mon, 12 Aug 2024 20:13:24 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A88A219772C4; Mon, 12 Aug 2024 20:13:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A5E2E196BE80
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 20:13:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0E9B21979201
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 20:13:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-394-0PBAm-AeNJuAbKoyPbrpvQ-1; Mon,
 12 Aug 2024 16:13:21 -0400
X-MC-Unique: 0PBAm-AeNJuAbKoyPbrpvQ-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WjQgj0FzMz13Yf
	for <blinux-list@redhat.com>; Mon, 12 Aug 2024 16:13:21 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4WjQgj07CVzfYm; Mon, 12 Aug 2024 16:13:21 -0400 (EDT)
Date: Mon, 12 Aug 2024 16:13:21 -0400
From: Rudy Vener <salt@panix.com>
To: blinux-list@redhat.com
Subject: Re: taking a screenshot using either Links or e-links?
Message-ID: <Zrps4QuFBMaLL4V7@panix.com>
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
 <ZrpnxHg6pp4_xhuX@thechases.com>
MIME-Version: 1.0
In-Reply-To: <ZrpnxHg6pp4_xhuX@thechases.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

You can also run elinks, links, or lynx within screen and do Ctl-A h to save a screen snapshot in
hardcopy.x, where x is the number of your screen within your startup directory.

Also, I modified my elinks.conf file to emulate the lynx keys, so I can save
a rendered copy of the page by typing
p, to print the rendered screen to a file.
I have long since forgotten what the default key for this function is, but a review of the elinks manual and conf file
should help you

Or, if you just want a fast and dirty solution, copy the following
lines into your ~/.elinks/elinks.conf file:

bind "main" "Enter" = "link-follow"
bind "main" "l" = "link-follow"
bind "main" "Left" = "history-move-back"
bind "main" "h" = "history-move-back"
bind "main" "Up" = "move-link-prev"
bind "main" "k" = "move-link-prev"
bind "main" "Down" = "move-link-next"
bind "main" "j" = "move-link-next"
bind "main" "p" = "save-formatted"
bind "main" "!" = "open-os-shell"


On Mon, Aug 12, 2024 at 02:51:32PM -0500, Tim Chase wrote:
> On 2024-08-09 14:08, Karen Lewellen wrote:
> > I recall, that links the chain has such a method.  If I am right can someone
> > outline the steps again?
> > or, can one create a screenshot file in elinks?
> 
> I don't know if you use tmux, but if you wrap your links-the-chain
> (or lynx-the-cat or whatever) in a tmux-session, you can use
> prefix-colon and type
> 
>   capture-pane
> 
> to capture the pane's contents (your lynx/links session), and then
> use prefix-colon and type
> 
>   save-buffer karen_screen_capture.txt
> 
> to save the snapshot to "karen_screen_capture.txt".
> 
> If you don't use tmux, it's an incredible tool and I strongly
> recommend it, but I wouldn't want to encourage it while you're under
> duress of trying to get work (like screenshotting) done.
> 
> -tim
> 
> 
> 
> 
> 
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

