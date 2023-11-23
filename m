Return-Path: <blinux-list+bncBCVPTHE7K4IO7PX7VIDBUBFZ33DMA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id D08CA7F697E
	for <lists+blinux-list@lfdr.de>; Fri, 24 Nov 2023 00:25:37 +0100 (CET)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-58a83a73ce9sf1510279eaf.2
        for <lists+blinux-list@lfdr.de>; Thu, 23 Nov 2023 15:25:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700781936; x=1701386736;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SJSfy2ZjdLsD2HQVfMSIiiltCgj+AJCl/Nv9AOv8s2c=;
        b=BflI9DSYR8dlHIuaYSzOLKpNyInTznVrW+I4iu3NSQuU4CAGM57qkEfzJkHEZRr//L
         FSWoVdYvDsnJ+0aHP1uqwV26VYsEJcF8ukcDZ/8CyhvC9x2tLPGDHRSqinYeFKnZLXEQ
         GYLMrxEJl52e1aS1Itn1O+RwV7VkXo9eceyRFn5LHrdrjdnObojvHIwT60GP87YjuZIv
         lfd5XFBKGScVjkGqofxe1DefxYq6nEOE+Lczfhojc+Ne31NEEnmepXzzD/AajC6ei5+m
         qtHh+2QLWBp8PIJeEONV6Rnap0ZGqr+s+LGyt8uEN09RcV4eBAE96jkkSpP8Z+V8rYek
         fZDA==
X-Gm-Message-State: AOJu0YyogQZutsqjLEtEzIrGnOHhTd9JCidhd0sau4YeNc4mgACLefAl
	qwoFlh325KQupawcRzM0UmuKZQ==
X-Google-Smtp-Source: AGHT+IEXuhlHhhemrPb895EfaWe5NjpkVJPx7xFnnTUiXy5kfylqAC35IKHxDLbrv5f9RYsretbl8g==
X-Received: by 2002:a05:6820:1623:b0:573:4da2:4427 with SMTP id bb35-20020a056820162300b005734da24427mr1220462oob.7.1700781936303;
        Thu, 23 Nov 2023 15:25:36 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1acb:b0:589:cff6:b9bf with SMTP id
 bu11-20020a0568201acb00b00589cff6b9bfls1250478oob.0.-pod-prod-09-us; Thu, 23
 Nov 2023 15:25:35 -0800 (PST)
X-Received: by 2002:a05:6820:1517:b0:58d:363:e600 with SMTP id ay23-20020a056820151700b0058d0363e600mr1308521oob.9.1700781935531;
        Thu, 23 Nov 2023 15:25:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700781935; cv=none;
        d=google.com; s=arc-20160816;
        b=Ti5eXnHv59z0q//3HgkeGATZW8NM2+MXuX90SVODR9cYiIQnOuIQVucQ56qAOqrH4R
         WlpYnNozGutq1PFBHX23xI42tu754NBGB3lu5jQPttSqFsGYLc/30tdXMyXQkXPcrIdE
         fsaiN4VZnAoLpCjd2es9FfPDL3ErIgvbH3cu87kTbbfL5eycmS18j9nmkxi7e0Tr5ssO
         AlkSCrdPBXh5CR/ui/dxxciVV/+9a19lwj2cVHKL6JeF5VX1fCYVaM7Texn2a3FxuhIi
         TlMSReDYA6rJtYoe638PffipFmMupinnEFhPGi97/ujoJsMw6Sw5Hew7aKhxgtU9BG/M
         61Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=SJSfy2ZjdLsD2HQVfMSIiiltCgj+AJCl/Nv9AOv8s2c=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=FLfpktTvt4jWbI3HjCC8lUIAtpHY/CAhxc37b+QJc5SJywfcr0t3NOXS3zROYpPZUh
         pQXXZqWeCWhwQLG9yVI68l7tc4phgO9ElPIxuooymiDzJ0o+Gs1q/RkmDNRdup2DfDOI
         BQW1BuD+5vDt2DqWtxLsDI0Qi9WYSaq8XRmdd5zntiiFSTUSj3BOnOwZt6qKEBTp+3to
         nbu5dmmiR5s9gbL7x+0GbZpkMhHyqhQuHwYHr43WRhIPcenJxx3Jedl/B1i21yb+t9L8
         hm9XilKQjANdnfQOOpCaoea5DobJsG/+IRSAI4hMYH5kxVLkIDYli3u6QOzN5Y3ICfz5
         t22g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id s14-20020ad4438e000000b0063d4907b605si2060003qvr.129.2023.11.23.15.25.35
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Nov 2023 15:25:35 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-265-u3fiH9NpPqmSKhJz3ip5kQ-1; Thu, 23 Nov 2023 18:25:34 -0500
X-MC-Unique: u3fiH9NpPqmSKhJz3ip5kQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C47CD185A780
	for <blinux-list@gapps.redhat.com>; Thu, 23 Nov 2023 23:25:33 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C1754112130A; Thu, 23 Nov 2023 23:25:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B914E1121306
	for <blinux-list@redhat.com>; Thu, 23 Nov 2023 23:25:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 902BE1C05136
	for <blinux-list@redhat.com>; Thu, 23 Nov 2023 23:25:33 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-493-nUgcnfJVMCiLQVLUf0ggzw-1; Thu,
 23 Nov 2023 18:25:30 -0500
X-MC-Unique: nUgcnfJVMCiLQVLUf0ggzw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 02C3C44FC6
	for <blinux-list@redhat.com>; Thu, 23 Nov 2023 18:25:30 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id B4B61100A14; Thu, 23 Nov 2023 18:25:29 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id B29E01000AF
	for <blinux-list@redhat.com>; Thu, 23 Nov 2023 18:25:29 -0500 (EST)
Date: Thu, 23 Nov 2023 18:25:29 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Roundcube test, was webmail, google removing basic html, etc.
Message-ID: <Pine.LNX.4.64.2311231822000.3624632@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

sharing some  positive after a fashion results I provided another list.
Subject: roundcube, is  freedos, or dos based mail clients?

Hi folks,
reporting back as a member of the greater Toronto Linux users group likes 
playing..allot, with mailbox configuration, hosting his own.
As he uses roundcube, he created a way for me to text, creating an account and 
so forth.
because the link was simple I could test in lynx, in links, and in elinks, as 
compiled here at shellworld.
almost everything worked..perfectly.
The thing that does not, is frankly a sloppy crying shame.
I could log in, reach my inbox area, choose to check my inbox and get correct 
information, compose an email, including editing the email body..everything but 
actually send the email itself.
That is because the send button has been JavaScript coded to be disabled from 
the keyboard.
Lynx has a keystroke that allows you to submit these buttons anyway, if coded 
correctly.  led me to a 510 server error.
As I upped the JavaScript friendliness, links and elinks can be compiled for 
it, I discovered the problem.
the send button is actually java script coded to be harmless..I am serious.
There is a rule in  the web content access guidelines for this, stating that 
all JavaScript must work from the keyboard.
Basic reason?  those who cannot lift or point a mouse, including those 
embodying paraplegia.
even voice browsers draw upon a form of html, simulate that submit button using 
enter key infrastructure.
Anyone at all know if roundcube has a support team?
This tool could be amazing with some slight JavaScript fixes.
Thanks,
Karen



