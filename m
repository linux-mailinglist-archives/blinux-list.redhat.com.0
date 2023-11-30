Return-Path: <blinux-list+bncBCVPTHE7K4IJL2E7VMDBUBBDRMTH2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id B51697FE6BA
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 03:31:50 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-423d7ce2864sf1504331cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 18:31:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701311509; x=1701916309;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KpCedwxaT/zlRM3ywUz1WYTbyJ9Yyw4dUY61pBZNXMA=;
        b=GKUk7phXLzU144MX/sugN0sj5P/3nXM2SUPMukaDBbTabZ13Q2VodB5xOwt3c++Vs8
         cmqYBxYx9IqSXIyH64Tqqi7B8dMmnuTYnmDW+FdY3kv2B7OJyffWCns3fVD/MsDSaqy4
         PvgnexVqDLRGn5dirY355u1mWtUn08B7yMvzHPvEmrYHkcS7MFfrOc4St4GENMWjRp9M
         wVdwre0tsu7HKEHh/3RwWjTPgY30H/qwQN6aYBnPw9xOquxvkbjomT6R22P2KRgJec+A
         qYT9zgtFpe1C2azEqKBMp+SXZwdsG1OQrvVzXTvpoX/GpVel+bHGLiHHl9BcFXye6uOb
         +e8A==
X-Gm-Message-State: AOJu0YyFYqoHY3/tBDlA+rABD8KRkLtiAkmxGaNTfdex84NJGa58Id6S
	OXIScYisVoDZnUAtMQ2KYi6rvA==
X-Google-Smtp-Source: AGHT+IEoxkjXLHe5e3AXylcCjbNyFbyXzP81lFoKLZn4O2swtP8HcNYGk4+lIPrBQyQLrMG4xbeDcQ==
X-Received: by 2002:a05:622a:199a:b0:421:aed7:d588 with SMTP id u26-20020a05622a199a00b00421aed7d588mr23081081qtc.5.1701311509590;
        Wed, 29 Nov 2023 18:31:49 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:18aa:b0:423:7e09:4f05 with SMTP id
 v42-20020a05622a18aa00b004237e094f05ls562186qtc.2.-pod-prod-08-us; Wed, 29
 Nov 2023 18:31:48 -0800 (PST)
X-Received: by 2002:a05:622a:188f:b0:423:839d:9fc6 with SMTP id v15-20020a05622a188f00b00423839d9fc6mr22954962qtc.16.1701311508468;
        Wed, 29 Nov 2023 18:31:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701311508; cv=none;
        d=google.com; s=arc-20160816;
        b=Hu/RPSAwUm0mlNZzF6jinyhO3E4OBH8/Wy5/4YOxSlwCmDHiCptHqRLP4QZU9sPmpn
         RIsRzW+ot8JVnNA6wPCLq/dyChnpfph8OL/A9jjols37LfF99S1BUzgS+k40QUNrbeu7
         BoQJxqlzC/ve/NjOefA259yux/sXP6ZsZE1hVXwEtoEuLF7ntDfHlA+AiR2cEy5nGXYW
         g2X6oAxMjThfo19fw4ajJnYBs8btgP0J4RWzJ63vhPQWV5HamI4Umnk8/xLdDmRHOmxp
         M3Cuc3yfRYOshrnYhDA5w0z9JKmagBsDzwdSMIbcTu1NCnWqqgpbzmEqeWAudpaQU5UT
         LZGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=KpCedwxaT/zlRM3ywUz1WYTbyJ9Yyw4dUY61pBZNXMA=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=j0sYzN4NW1Da5hetPw+gPSp+/1DudqI0X35SRQVe9Tk+/UUd4XnvnWZOqZZD41sK4J
         qtjtnE4wG0Q10WRxRh/AsN6F7ULJZ+rOX527DYOPL7AON6MKEyFP+o81UVIw7ErmNjol
         hALebXrB5rg7yB0G+dkhacCmgF9hZI2R3RTA0bGA2WiL+ckqs7xdmgNOAdYm1dON01IH
         jZUnfSVK5aod9QYb+joA5KN0It///hlaxVSIWuioL8memn9bP4j2eCspR/mHs/Bljnrg
         +bcNatUbVNFgVDrZD4B49JKIH1EOFLMwMOZypE1ABk4OBOXenNs9JjToNiPOeJJfhaGo
         jvmw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id g27-20020ac8775b000000b004236e19c605si136145qtu.747.2023.11.29.18.31.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 18:31:48 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-269-QaguDaRJPU6_PPKINEwWrw-1; Wed, 29 Nov 2023 21:31:47 -0500
X-MC-Unique: QaguDaRJPU6_PPKINEwWrw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFF77811000
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 02:31:46 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id ED63A40C6EBA; Thu, 30 Nov 2023 02:31:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E603940C6EB9
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 02:31:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4F863C0DF64
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 02:31:46 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-297-RLJwrZ7FOFaSNucMkIKaEw-1; Wed,
 29 Nov 2023 21:31:44 -0500
X-MC-Unique: RLJwrZ7FOFaSNucMkIKaEw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 1B38344FC7;
	Wed, 29 Nov 2023 21:31:44 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id DB34B1001B8; Wed, 29 Nov 2023 21:31:43 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id DAC681001AA;
	Wed, 29 Nov 2023 21:31:43 -0500 (EST)
Date: Wed, 29 Nov 2023 21:31:43 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <c9277002-d894-203e-511b-952f27c98048@panix.com>
Message-ID: <Pine.LNX.4.64.2311292130470.3719449@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
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

Sorry, I mean links the chain.  thought I had said as much, apologize if I 
did not.



On Wed, 29 Nov 2023, Jude DaShiell wrote:

> There is no keystroke for that.  You can turn that on in options or start
> lynx with lynx -number_fields.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>
>> Hi folks,
>> for those using links the chain, there is a command line option that turns on
>> links are numbered.
>> Can someone remind me of the keystroke?
>> Thanks,
>> Karen
>>
>>
>>
>>
>

