Return-Path: <blinux-list+bncBCFIHJ744YGRBTM3W2WAMGQEIOCENCY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AE881F954
	for <lists+blinux-list@lfdr.de>; Thu, 28 Dec 2023 16:01:35 +0100 (CET)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-3bbd7d60749sf246303b6e.1
        for <lists+blinux-list@lfdr.de>; Thu, 28 Dec 2023 07:01:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1703775694; cv=pass;
        d=google.com; s=arc-20160816;
        b=elzMO218SwAUupDxlySJM+NDXoh/jGyfj8MGqjvwXr3JhFePdGZWGri2UI22EcXiTf
         c8OqDNoSYV0XiSF7sBzSYck9Pxh0WNOiD4JkICfydpcHXgzpx4WrZZ9cHERrYo9hjWnH
         IODDg/Sc4J7H4O7iyFYDdwCrMXbqhp+UDSHy+8kue6PSGwb7/uWA2dElBoPdC9jG+8PK
         1wStX0WQ66sJWKLwtw7x8sHuhM0u4z3S3VKkyYcPzgLv9df5L9q02KrNwrlKVO5kJy5o
         94UvaD30BJQBrIBFP7pA8BPxogY91gu+MCOtrm4GIvccRXdI0hzOck6OYzFBAZf6YGne
         hd5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :from:date:delivered-to;
        bh=5wUxU8zlsE7igclnZrtPgdmD9OW5uOuZXdkNSlZBdrA=;
        fh=0Ko2fgIV9Gr0g+K0dy/PISBKI9cr4mjUOnMN79CEEag=;
        b=yiZnlxTAVqIpmG/WnLZVo4KDoH0s+z8rdVtWuN7+covgxlZtEcUavsHtFEzln8Wx2g
         9VcJi6qZP2K8QA9kVKsvj5KZeNOMgvLOmSRD89qEWKOcQ4DiNLVsdebJ0upVg9E7VIfa
         gDudhsOzvXTYg4KZzms+PlUjxuwRi/gb1jG+M2Jbfd0bb7bb1IXjvoJHjq6TtFosVuoh
         mJ1cBFYZhObkFEqMyOOtSCuojAdMJErColZTQNwxCt1aTrYlPLTL2n+sFCNK+WrO2BkY
         5cx/bogVcMaooduIEcX3S1jGY7q4GI2ReNohCrLDna4xKqHqqLg0Ts3j3Ourq+dgNG5+
         Mptg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703775694; x=1704380494;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wUxU8zlsE7igclnZrtPgdmD9OW5uOuZXdkNSlZBdrA=;
        b=OB8CTR8k7dpQCy9vi2ydvyF7x6tttP3f+V3wD53ociJHjGycRZ7uJGnAUGYpFhFh1f
         TnjcTLxvRmhFr2oX2H3egAb0tELqFcoFGA8lKnAOEQ90yfmWtSb/vsYBLzduumrOI4cF
         Za0v1VizKnubjCVEtNd6OZsmQrX3XaQf7uamSmkzMuL874RG9vpIb5g+kXs1RpLQ5RG6
         DGYhb+0fjTpiXeUKCL5cDW7wQJ43wNszC6/vcN1tHBipDG/AGmpLyJdRzuRKqfE90/dn
         lSGNnHwjQiY4S+ugTiwZkmfv++OY3JpD1nRX5DgLNvIrf1GQd9pU94kzB8Q6GyBm5EP1
         sOKA==
X-Gm-Message-State: AOJu0Yxa4SZOkHxw6E5f6UjAC8EpB+bPnQs8FRzzltVlyxyh7Vx2FgUx
	WkIimPTK92Dr1pKW6Dw7HI32EbOkD1Y9ag==
X-Google-Smtp-Source: AGHT+IFvfZlAjUnN+mZ2RlROXGw1uffY75mmDQz8VV9rLW+QooKpFiixJyeDJSZQJOk4UIXeCp+d7A==
X-Received: by 2002:a05:6358:27a8:b0:172:b6d3:bd49 with SMTP id l40-20020a05635827a800b00172b6d3bd49mr7144640rwb.31.1703775694239;
        Thu, 28 Dec 2023 07:01:34 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:43e9:0:b0:680:48fd:c706 with SMTP id f9-20020ad443e9000000b0068048fdc706ls1680670qvu.2.-pod-prod-04-us;
 Thu, 28 Dec 2023 07:01:33 -0800 (PST)
X-Received: by 2002:ad4:5765:0:b0:67f:7630:2371 with SMTP id r5-20020ad45765000000b0067f76302371mr17025291qvx.13.1703775693306;
        Thu, 28 Dec 2023 07:01:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1703775693; cv=none;
        d=google.com; s=arc-20160816;
        b=WXHGBgHvo0FqCzzl33YKRpa4XOL5id0grYDkjk4MUEiWWyWpluWYYVk2CYhZGMuM/u
         QHZ+wwhdlSo64WAnjq+oqLZcMWr3WmKSBPr0hPqB1p400v4KnoiaeHuWQY6/6X7U+GX9
         hyQmCu/bPkeZLsNnD+sSLZKkp+0xQM8xItsEd2vzJMgy6/Sd3CfqE0NNDFwTtJGeuQmV
         UTWtrAVGGxwVg3cnRQNHVVyHkbNMRsT1g4N42tstwUrGVAi6SSJnzrabjKCvMLZGEEod
         JZ9yWpjO87FPaF6tHFrr+Vvn1+so2rAB2QDsGG1NoosFilB5UcoeKrWodcL+bBSC5FCZ
         8ukA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:delivered-to;
        bh=6ayELseO5c2rwQY9vq3O/m/IV9S4CZFzqsk1XNWTykA=;
        fh=0Ko2fgIV9Gr0g+K0dy/PISBKI9cr4mjUOnMN79CEEag=;
        b=OhkwQPzvqAEuVxHDGIy4TlpRYOkyVTTg13VRiLRDUxmEbmSvwJxi5iNPne4moPcHm8
         +/gUjbVdR67E/ROQk4tacn7ZzyaAw+rt427V1rd88BvcKlRBBfnPijxOa6Wz3yu7nWOn
         u6tPvSwb6zUtpkGbh6i3y+lEAUiqET8x/SFL1EyKx8+V6Gi89Utqx+BJLuicr8QQl/56
         iq1gaba69LRPI/FmTeD82Jx/Ipnnkn7rosNQZeBYC3QRe4YcI4y34BVmij/l1CVfY5vr
         Ds2D3oe5xWkFqUDYQhlGSvdqwpe7a6xpTALpdoukP+vmfyGyHvBoZ9Z4QYU4z93Fj5Hv
         8Hzg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id h5-20020a0cf405000000b0067f4272cb34si13307195qvl.48.2023.12.28.07.01.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 07:01:32 -0800 (PST)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-677-yoVE6eRYNby1xLsqq_3vUA-1; Thu, 28 Dec 2023 10:01:30 -0500
X-MC-Unique: yoVE6eRYNby1xLsqq_3vUA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3D15C101A58E
	for <blinux-list@gapps.redhat.com>; Thu, 28 Dec 2023 15:01:29 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 39DD52026D6F; Thu, 28 Dec 2023 15:01:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 319292026D66
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 15:01:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1FAA1C06912
	for <blinux-list@redhat.com>; Thu, 28 Dec 2023 15:01:28 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-ZqyhnDzKOmm0M7tmEJhz6g-1; Thu,
 28 Dec 2023 10:01:26 -0500
X-MC-Unique: ZqyhnDzKOmm0M7tmEJhz6g-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id c1a64795;
	Thu, 28 Dec 2023 15:01:25 +0000 (UTC)
Date: Thu, 28 Dec 2023 09:01:25 -0600
From: Tim Chase <blinux.list@thechases.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Cc: Karen Lewellen <klewellen@shellworld.net>
Subject: Re: a question  about email clients?
Message-ID: <ZY2NxT23qm2gJZMq@thechases.com>
Mail-Followup-To: Linux for blind general discussion <blinux-list@redhat.com>,
	Karen Lewellen <klewellen@shellworld.net>
References: <Pine.LNX.4.64.2312280043090.4143862@users.shellworld.net>
MIME-Version: 1.0
In-Reply-To: <Pine.LNX.4.64.2312280043090.4143862@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

Tim here.  There are a number of parts involved in email, and
managing the email depends on any/all of those bits.  Beware, a bit
of a flood of info falls below (you've never known me to be anything
but prolix)

On the user-facing end of things, you have your "mail user agent"
(MUA).  This either stores mail locally to where it's running or
it access a remote folder-structure via IMAP (or, if you're stuck
with Microsoft, they created their own MAPI protocol just to make
it hard to interoperate).  If you keep your mail locally, you can
either fetch it from a remote machine (usually via POP3), optionally
deleting it from that remote machine; or you can just have a local
cache with the authority being kept on the remote mailserver,
accessed via IMAP.  Mail can be kept locally in a number of common
formats, but most frequently you'll find "mbox" (a single file acts
as a folder holding all the messages) and "Maildir" (each message
is in its own file) formats.

Email management can happen either on the mail-server itself where
the admin might define rules like "mail coming from this server is
always spam, just delete it before users ever even see it"; or mail
management can happen in the local MUA where you can manually
move/copy/delete messages, or set up filters to run (automatically
or manually) to take some of the druge-work out of it.

When you send mail, some programs just submit to the local system
utilities for sending mail and let it worry about getting the mail
to the other end.  Other times your MUA talks directly to a mail-server
via SMTP to send mail.  Since it involves mail-servers talking to
other mail-servers, so either side can institute management decisions
in the process.

It sounds like you're SSHing into a remote machine and running
Alpine there where it talks directly to the Gmail servers via IMAP
(where the mail remains on Google's servers).

Gmail does some internal IMAP trickery to present each label as an
IMAP folder, so deleting a message from a label-folder is more like
removing the label; and copying a file to a label-folder is like
adding a label.  Though it should still have some common-type folders
(there's no standardized naming) like "Trash" or "Deleted Items",
"Junk" or "Spam", "Drafts" or "Queue", etc.

So when you ask "which system matters?" they all do in a way.

However, message *sorting* (the order in which they're presented;
different from filtering or categorizing) is usually a MUA thing.
The Gmail web interface might sort one way (IIRC it does a top-level
priority-based sort, and then sorts by a user-defined method inside,
such as by received-date or thread) while Alpine (or mutt/neomutt
or aerc or Thunderbird or whatever) should be able to sort by
whatever aspects you prefer (date, recipient, thread, etc).

Hopefully that makes sense?

-tim




On 2023-12-28 00:56, Karen Lewellen wrote:
> Hi All,
> Going  to ask this carefully, so as to avoid confusion.
> Given that there are different email clients, alpine, Thunderbird,  and the
> like, what actually determines how email gets managed, the client, or the
> source?
> there is a member of the greater Toronto Linux  users group who has set up a
> mail server where I use alpine to access gmail.
> However, because he has never used alpine, nor has he used basic html in
> gmail, he is basing the expected sorting on the standard gmail process. that
> process does not use folders at all, but labels apparently.
> as a result,there are things I imagine alpine expects to find which is not
> here.  We are using imap for gmail, but my personal experience of imap,
> based on dreamhost, still has a mail folder with  saved messages, sent mail,
> postponed messages probably spam etc.
> and an imap folder which has other elements unique to dreamhost.
> 
> I would guess Thunderbird has its own sorting system.
> My question is this.
> If you are using imap for gmail, or yahoo mail or whatever, in a client like
> alpine or Thunderbird which system matters, the source where the email comes
> from, or the client you are using?
> Hope question is clear,
> Karen
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

