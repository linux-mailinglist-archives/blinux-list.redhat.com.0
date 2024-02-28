Return-Path: <blinux-list+bncBCWIB27NVECBBUUI7WXAMGQEEPE3YUI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEFC86B1E3
	for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 15:33:55 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-42ea54868d2sf14933971cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 06:33:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709130834; cv=pass;
        d=google.com; s=arc-20160816;
        b=fi7BWK/mxRs2R+5RttXLm4ctUInKgZErYOMYl+wOvATN6vKcUG2kGtRtvi/NlQcA6o
         SfgC7VDoIRmjkY6wftq+l233EYKtgUCiDVtJnD7V8UzBJIOgzMe7oaOrxN8iGmdqmt/g
         Krfqb+TYsG9KbZulFMI2uEzY/vFd5IjTYBsrSAagvPSeWfqyCMOqhc2uh7KWpPydGagr
         opxszng9uMHDdkReZKfJsorbFY1+pmwYTtpqtGAHBpVB5aUBb4D+nPL2nixLJOKoMIk9
         y2tR7riZ3lZEafie9TsMaoH3/H3Ibyc7nYXOjIch41JdEDdaKPv/v1UuZ8QVjxngtXfl
         9NuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=G+DLwjbms0qJvg93tMxRBOjER3jJMYRtp0XbSCmTXYI=;
        fh=9kUfEPVKObwtFb97wV2BKw96xMsVJmdtOLC3ydYmLv4=;
        b=xvrWivbfDEtGFj5FLdkb+jAOLk/vPwg3hPoWrFUpEjYL0oqYfTtppRDX/ZMD+qGR34
         iVqgZwZaGMbLhoAn2x3ph0WuzxtmD0P4sCrSsWSrTZg7hdDjW/pGbkXXoRp4khdF1C7N
         v3znvkTwlDOfSCYYBxaH+489UoEoAVHuucCfQXAeArz0sc4AvKoIHGUeoZ5fvOaPW91D
         94zc0L9baIojIjPg8qSm956wNf0OTT+24JK5b1qNj9bJiDnkHu0hZlvkSZ4FF8OrpTjh
         PcS4FpdcIKRdbVbPwsHwDaomYQ4gE+A0B9/BtffCeYIhl0RLgtydLHd3j8dssfAqRbVz
         oU3Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709130834; x=1709735634;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G+DLwjbms0qJvg93tMxRBOjER3jJMYRtp0XbSCmTXYI=;
        b=Kom7Og5hTznfzQOuf8nYbZS15JJCyUJxuLdj7wta8LHY09ePUeIxNGSVPT8QOT+04x
         zh7k/SVAVCH3JSO+oHvq/2RJi4d7QTCWcId6wyV+7uo234EKcC/Qkg6GPccZc6PnIFlj
         a7dbkOIUDTinzatTBQXhQvm9mlj50d2o6QB8OFMFu4zbZxml7WmMqjwNOKTAa2RlS37b
         YA1zG00nf+NGo469bysz2PjmyP/Fzvx16R79lObZQUBRUiNT2TuzYH27uFZwAeihjXVI
         tLJofsRHaA4hn9MHWTmGWVS4/XtwYRL/0VfCmwEilCC/+6leZwWzhrng5ioGOZjMsLac
         HA/g==
X-Forwarded-Encrypted: i=2; AJvYcCUh/Ib2hKivlFdQnwnMFdYvyogED7jVo4x5AEXMhW/yltwhojqkNEVoEVJdqOzpXcSk+qDkecHSECBgl93aW/FhvyA30Ts5w3IC
X-Gm-Message-State: AOJu0YwSFyduJ2tzo3JwUDUuDc/dtdIA3CXI7LVSfVqWKw+8LFtkXwLL
	n4xJPzOkRXMwsObWeMHAjzxvBziTqTVul8aAwlYwl8XBoyNQ0oShcGh6VE+J6aw=
X-Google-Smtp-Source: AGHT+IGgojpD1Xj4eBOxEL8lriXD63fVW5okKqPNrpn52tlalz4fRvtsVSGZkGUX3TLC+hT7F+E25A==
X-Received: by 2002:a05:622a:180b:b0:42d:c7f4:ed00 with SMTP id t11-20020a05622a180b00b0042dc7f4ed00mr15213950qtc.20.1709130834208;
        Wed, 28 Feb 2024 06:33:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1826:b0:42e:6bae:e106 with SMTP id
 t38-20020a05622a182600b0042e6baee106ls5506844qtc.1.-pod-prod-08-us; Wed, 28
 Feb 2024 06:33:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV272hwpExGXhWUmFrrjyiiE03s73MAvo4FsubT4yvU4GMcqusYXhEg+IIVlMD3QSUbZ5JKd8VBjHP0o/aCuKRM5LGihn0qSpntUow4
X-Received: by 2002:a05:622a:1487:b0:42e:b481:e108 with SMTP id t7-20020a05622a148700b0042eb481e108mr604088qtx.64.1709130833350;
        Wed, 28 Feb 2024 06:33:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709130833; cv=none;
        d=google.com; s=arc-20160816;
        b=DSJ4Ihv0GwhKAzsNwg4KC0tyHdO5j7M0XVWeye3R46Us7P7d3SgBcBBumHdnbZDCbh
         n4YixUI9FVuwtXD/hWfiYx7NDlzt2nQFLj2oqw3Mzx2AGuc048zPQ5R/x47JR/+Pcas1
         eZS2B4mqoevj2xACfGiLMDB10VsgfjjwF6ZlDS+Sx0geluTppbPs7pJ0jKckjqds1eA2
         pWk5NEBgCsUF6DkKCFHN4j0j5NR0y1tuuhYeUZzvjesNc+RCMOjlkCDGDxOcUq7/dZaF
         uRrgs4MtB8b3ZzWyYOUW0R6clz67anyRbkAj/Bk63h1CPVojiqoMNnZ6RG9nRDrFV9hd
         62zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=PaaoJRqLNI+zcG6hZLvbh9OYoOEWQJu5AYOpxnDgcOU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=G8pbvhAK5BgxptnCYRCZ4P1mdeQvhr2c9HCChWMbUfeeN/gMKPRysmbmK9S1fm9XQc
         svYcZFOE+az9Rqh/vZOpGWE2Ry6DBFDSOzKwDbclPnQ1E4S/9lKg7jmP9KzksoDppxXP
         HT8IcK9MrdHRwiqyASBGlEGvawWP2wXiQbe8NIK+Wx8k/XHhvLgTVRuSC+G4cSOarM4w
         zr1SOJ4Tbi5q8d8B/lzh9K4uekQdUl74bZxhMy5LdFCT/pIAixTWSQA5vwg4Eb3Z5+gR
         rIOcKR9NQOyFbFUXPyKqMY9DeXfKoo3hSPMfNNEXR9dDPNwrDKjMDK2N5iw5bVtHgXDW
         l/2Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id u39-20020a05622a19a700b0042eac1708f0si1464771qtc.769.2024.02.28.06.33.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 06:33:53 -0800 (PST)
Received-SPF: pass (google.com: domain of janina@rednote.net designates 66.228.34.147 as permitted sender) client-ip=66.228.34.147;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-39-Qkof3DHbNPyKfy_R8pRvFQ-1; Wed, 28 Feb 2024 09:33:51 -0500
X-MC-Unique: Qkof3DHbNPyKfy_R8pRvFQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2384085A58A
	for <blinux-list@gapps.redhat.com>; Wed, 28 Feb 2024 14:33:51 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2003240C1066; Wed, 28 Feb 2024 14:33:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA8FA40C1064
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 14:33:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C2403C29A66
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 14:33:50 +0000 (UTC)
Received: from mail.rednote.net (opera.rednote.net [66.228.34.147]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-356-j5no3HztPXSX4zWs3KXbOg-1; Wed,
 28 Feb 2024 09:33:48 -0500
X-MC-Unique: j5no3HztPXSX4zWs3KXbOg-1
Received: from opera.rednote.net (localhost [IPv6:::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by mail.rednote.net (Postfix) with ESMTPS id 9B5EDFA0D2
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 09:26:22 -0500 (EST)
Received: (from janina@localhost)
	by opera.rednote.net (8.17.2/8.16.1/Submit) id 41SEQM7n212197
	for blinux-list@redhat.com; Wed, 28 Feb 2024 09:26:22 -0500
Date: Wed, 28 Feb 2024 09:26:22 -0500
From: "'Janina Sajka' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: pandoc and the docs format?
Message-ID: <Zd9CjhZah67fJKZQ@rednote.net>
References: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
X-Operating-System: Linux opera.rednote.net 6.7.5-200.fc39.x86_64
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: rednote.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: janina@rednote.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of janina@rednote.net designates 66.228.34.147 as permitted sender) smtp.mailfrom=janina@rednote.net
X-Original-From: Janina Sajka <janina@rednote.net>
Reply-To: Janina Sajka <janina@rednote.net>
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

Try a command like:

pandoc -i file.docx -o file.html


Best,
Janina



Karen Lewellen writes:
> Hi All,
> We have pandoc installed here at shellworld, with my using it most often to
> convert epub files into html..then using lynx to make those  text files.
> I have a d. o. c. x. file however.
> previously I would use basic gmail to convert these, but that door is closed
> now.
> Will pandoc change  these into html?
> Because the format if not actually a word . doc file, antiword will not
> convert them.
> Ideas?
> Thanks,
> Kare
> 

-- 

Janina Sajka (she/her/hers)
Accessibility Consultant https://linkedin.com/in/jsajka

The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa

Linux Foundation Fellow
https://www.linuxfoundation.org/board-of-directors-2/

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

