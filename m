Return-Path: <blinux-list+bncBCCIDSOV5UGBBVXNWCXAMGQEEYSR5RY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCE08541D8
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 04:43:19 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-42c6b58b448sf8401491cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 19:43:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707882198; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pn+cW7Ei8hlgyD2ireqTmSinFHg99h7Vk7/WGnGuAIUj7CyXZvK23gbymmKHfKDzOK
         ctKIdsmhrCCYJ6t9aw5Phd3QL7M0E7EaKMMFuj/IMkpez60JMByHQryVyZt16eOtkbc3
         5xoJd7VAfDWQODrL7sL82sVQ+wpkv23TtpoqESu48oAwHuReuzaAwHRml/2S6yG+KGMR
         2WBkjiq6+eY7SCa7nxmfuwMkMBomExMyLWNQMh0L3zCN7z0WCpvf7N2PSefEJYTQFcra
         yyNk6clURDfbxZZ7N7iL6q2wTAhgDAtZ2LSP14/dwI2ZjURwBzznYwDIz4WBTW5yJCwm
         4pmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=2x6N7hN9pq2qe069jwRPNKOOfz5DNA8KCr7jhoqk1Fc=;
        fh=CrpjDF8XMuTBnFLo6rkmFQKHLIsF9b69CG2vBgj+iak=;
        b=JkB4fMgyJ6t5JFYwJ27bgJrrYsBXTSus2irJLcV0bFTIPhQCLEteri9Qhnlj0SK6MX
         4VJKp4ljM7BQlYm6V6yJENlGiv43J5PuYqoYaN8EfpPIYaqC5eMnc4kNFqvP6DwK+Azu
         rvqoqm/ziac6XagMnuYtrRWVOD2R7Z6kT7NXBCzlSppHesj+zF1TC6ia5LXcJ+pIEDp7
         +2rm39tWeSGa7Vb5C+LQBHa5Tixzm1rNI2mxU2nWEIQTesKJSUCKdwy2bboXa7eDcIH2
         GsCxRoLSuwnpVianP9klUZ/5UTX7EaXTeGx3k+eUbKaPd8KQIOFiVkXrcFFbwuP3Bf3D
         OjzA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707882198; x=1708486998;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2x6N7hN9pq2qe069jwRPNKOOfz5DNA8KCr7jhoqk1Fc=;
        b=XLqkIdQLSe0KYBtH6O8Df+fP48XIDOctOGX+cR9rMqO4XhByjjSWDPQf67Ya9AGA+0
         H4MJ6iXPme/KsJvF/N8EzDk9NDdmy0lnK063aU0307uNGpDjuvl3ZC3k7Je5uNTuTbym
         eM73dYM1FTSo1n7snVaJR2BgpeugE29Q7uGvE96CwEKeO9rn4nVS0r1o5iHUsxyFTRfM
         9pNReIlaTyOFYQE7t6wIG7CYh5C/MwgwUgqafJfKc+uqVAlIfFKcyQKCCW2ZOG4gLanW
         I9kQPHwR3M3SnP8zLQoI1S3I71njp9ZmT/e50V7QTtMIup61MBOulYY/Zbft+GMHCFRd
         wOaA==
X-Forwarded-Encrypted: i=2; AJvYcCWo+LOphc206geaonO+aAfb5FOCKIFxwW6TqqB0PQEBmNSvDnVbYQ2wBXh6fMEUAt5S1Nyzvxhc1txgtliV7/Did/x7J3a2tpCG
X-Gm-Message-State: AOJu0YyrnZnbUrkLBiB6otL3/KWjIKNXVcoHh9xj+bgVVDoeZQfD4leh
	iuSaL44s6OeZhAUuWvEFUkDZHA5fHenqLM1Uapdtt2YE2YapL9CfGsv8j8uYfv8=
X-Google-Smtp-Source: AGHT+IE1Nj6Goy+r0k0zvNCCE52XXNfiG/HMFSINiIpoqvqajnfRyc1lkHtjZRPCjB/J+BQRD7im/w==
X-Received: by 2002:ac8:57c1:0:b0:42c:5935:7b2c with SMTP id w1-20020ac857c1000000b0042c59357b2cmr1532691qta.28.1707882198224;
        Tue, 13 Feb 2024 19:43:18 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5856:0:b0:42c:6fb9:e38f with SMTP id h22-20020ac85856000000b0042c6fb9e38fls3247603qth.1.-pod-prod-00-us;
 Tue, 13 Feb 2024 19:43:17 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXwjPt3o4Zv6VIjZZKdzraxZzCFl8Uw8dF/pAVXHhewfcu8WmzvUEUN7AA39vcYBIpwOkP8XEmZ0gGfmLJAShrc1Jswhn68aU04fbKp
X-Received: by 2002:a05:620a:9c6:b0:787:18b5:f56b with SMTP id y6-20020a05620a09c600b0078718b5f56bmr1362488qky.34.1707882197391;
        Tue, 13 Feb 2024 19:43:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707882197; cv=none;
        d=google.com; s=arc-20160816;
        b=fkycD/2NJDTfIGJUZgfxrFJl3cdWa0SUpK8oOG+5cWX3ui73BvOxft0BX2n7D39/di
         c2OBKBy4ffGE5qkKcqFRdSPbt6tAzOkSE/5gAp/l7STWIHaOY8yj48FOnjPJTGPBVIdk
         cSJsPo/KwHmR4oMFlbAzOO4oo7Y8+eouO/aaP0cixGoepn6eK4KgnvB+HZ/hZqlz6fOO
         d4Y/40QBMiqyLgLSGUcSmqEfLpPZ6H0gS204HjMP56PqeNLWxXJtsx+mXaI45v7vXr4I
         aWOxAqyb3xVYUOqwbaKYy7u0bBcREeMZ6PPiuZHFSNgzAdcYI13yQe8fHLOE2gAZ6tJY
         9c8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=tOJQi7GTvgSmhuHxJ6s8wLzL8h4zsHDjJayJ2DdGqqg=;
        fh=+XJAerMqjvLbVJs8QtXqmJD9dcS1KXfCMfrvzYYfSYg=;
        b=ChxlO7P209FMcSJdgithZ6t9eMvMp1gqD8oA2biDAiS0xuJBpaReh7Y9lsrKZH89Vm
         QqL6ROajigfPh76PRmw6Kyx+HK6aX13oyJn5ZHaNH0HhMECW8kyg68rIVyE7N3ZdS3hN
         VGDx5ZnZgEevyMP+H2QHTWZ4SzF4SqqQLUMl1RDLBZznF/BEaXrH9gRz1pta6Z4K9C/J
         IRQJio37grJul6iGTpLhVfqJvl644i4ANG/GHSzvgE/j9/Qs7AgMJkM7XcFRLMuD4sny
         PbaqK/qFv6ZeJdVA4r8DtGCpq1x2RoRFDPaLoF1XOMCRpM4i694g2mf4/EsvZiLSVGWl
         NHQw==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Forwarded-Encrypted: i=1; AJvYcCV9iFARqbIS3x01x+4kTaX3epLsP/R12abQSIKEtVPUb/hgUfG6Hu3VIxjfkp0U0c0Dl5nDUvEKGC0Sa4LZHXuYvpgT6kd4mtyEM94J
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id z21-20020a05620a08d500b00785dad6dc54si5000878qkz.15.2024.02.13.19.43.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 19:43:17 -0800 (PST)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) client-ip=64.147.108.71;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-365-OZGyq_FgPj6opkGuuB8MXQ-1; Tue, 13 Feb 2024 22:43:16 -0500
X-MC-Unique: OZGyq_FgPj6opkGuuB8MXQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CAA6C811E81
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 03:43:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C556BAC0B; Wed, 14 Feb 2024 03:43:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F703AC0A
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 03:43:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEC1610650E2
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 03:43:14 +0000 (UTC)
Received: from pb-smtp2.pobox.com (pb-smtp2.pobox.com [64.147.108.71]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-31-jBY3KpS5OgSms9E2I398mQ-1; Tue, 13 Feb 2024 22:43:11 -0500
X-MC-Unique: jBY3KpS5OgSms9E2I398mQ-1
Received: from pb-smtp2.pobox.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 1B83E1CCD12
	for <blinux-list@redhat.com>; Tue, 13 Feb 2024 22:41:05 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp2.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp2.pobox.com (Postfix) with ESMTP id 11E581CCD10
	for <blinux-list@redhat.com>; Tue, 13 Feb 2024 22:41:05 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [76.88.164.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp2.pobox.com (Postfix) with ESMTPSA id 48DC81CCD0F
	for <blinux-list@redhat.com>; Tue, 13 Feb 2024 22:41:04 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1ra68s-0007wY-0E
	for blinux-list@redhat.com;
	Tue, 13 Feb 2024 17:41:02 -1000
Date: Tue, 13 Feb 2024 17:41:02 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: ssh  command line question?
Message-ID: <20240214034102.nzqa4lpeeeljh22v@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
X-Pobox-Relay-ID: E11F0496-CAEA-11EE-96CE-25B3960A682E-04347428!pb-smtp2.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 64.147.108.71 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

On Tue, Feb 13, 2024 at 09:19:05PM -0500, Karen Lewellen wrote:
> Hi all,
> Will aim to keep this simple.
> is there an option with ssh from the command line that allows you to update
> new keys for the known host list?
> I ssh into my dreamhost office workspace from shellworld, as in
> ssh email@email.thingy.
> I provide the password, reaching the dreamhost shell structure for the
> domains they host  on behalf of my employer.
> dreamhost moved our services to a new server, changing our ip address, not
> an issue, but also changing the fingertip keys <hope that is the correct
> term, previously saved  for my access from shellworld..who seems to use a
> strict  matching process of some kind.
> My hope? is that there is an option that tells ssh to update the identifiers
> used for known hosts?

I recall ssh offering to update the known_hosts file, while
warning of potential security issue.

To verify the fingerprint of the new host, in the past, I
emailed dreamhost support to send me the fingerprint. 

> Thanks,
> Kare
> 
> 

-- 
Joel Roth

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

