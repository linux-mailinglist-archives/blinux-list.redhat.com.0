Return-Path: <blinux-list+bncBCVPTHE7K4IMFPMZVMDBUBF4UHBMS@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E247FC823
	for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 22:42:27 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-67a27d5e4d9sf4408446d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 28 Nov 2023 13:42:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701207746; x=1701812546;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6oZ0D8ToWbZWI7QaCuBhkvnOVQutOFrBJYORQI216I4=;
        b=tnP1RHVXuEGXqiLt/InNf+EOooxNm7kN+xI810RZjmC1Ci8ftJbMGzH/TZIvcHJ6ZC
         8yLpbhijrpgH/RBEo64WzIzhYvxMqW1gae3rDMjnhdQsPsulQFdRMnXrhtX/XlDVyAkY
         xEyAboKBAUi1Zavp62s7wASLl/eWByhzYkfFxghtqEfmhvsdzWpafX0ds8n9qOXbGXTC
         Yct8c3nnxrxbwOYOTZWD5cgcSCGdU4M31br5bWFs0LCySvUtwkY73VvCIwwN7TG7W4GW
         H5Ow3hUZ5d74+FmvV+arTbpWbde+C8VkipBX8eVGB8ucl92/fbPrrppj2Ta+udi3MWLD
         krGw==
X-Gm-Message-State: AOJu0YwpE5SoIiWk9LdRXgrfsvrrfLn+B2JcGkm3ghaPYsctReYYROuK
	SR7mkcGuWwt/bYuYT0oLOzqU4Q==
X-Google-Smtp-Source: AGHT+IHuZ5AAssKkDrBgoETfwv0zwR9f5SjTp18+RW0AVlaezbCtljo9e1pUqdtkMV7gAGdtIgoz/A==
X-Received: by 2002:ad4:5d4e:0:b0:67a:27ba:b228 with SMTP id jk14-20020ad45d4e000000b0067a27bab228mr19496834qvb.14.1701207746331;
        Tue, 28 Nov 2023 13:42:26 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2a8c:b0:67a:2b07:54c8 with SMTP id
 jr12-20020a0562142a8c00b0067a2b0754c8ls6274764qvb.2.-pod-prod-00-us; Tue, 28
 Nov 2023 13:42:25 -0800 (PST)
X-Received: by 2002:a05:6214:628:b0:67a:2372:30fa with SMTP id a8-20020a056214062800b0067a237230famr21805523qvx.16.1701207745699;
        Tue, 28 Nov 2023 13:42:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701207745; cv=none;
        d=google.com; s=arc-20160816;
        b=IyNJGqdCsga1BpXiygwA3p/iLX7InmbgUKaTQFbdmjy8gZjRLiLRf/PSJiVfGLeIlh
         QGWriTZJ26b7qPH6aKl2JZ8rYo8ujE3WemPC9ZrVXRDM7OlqBFJTPzb9sw9XE4s015Zx
         M5RYNQYuM+u3uEnRzyuEIBurZcHJJ31E8IF95LB5EXg3AtLlftHfErjq3CTTidS3CwpA
         wn2xxPDiwQgkeSCi7n7qtQXU78OUStK6CziUQV97NCbj/L9wBF+IEowD7lHK/jXpbEmh
         PXZCJsb9csCn/o46o9b8RcW65fdvPMfHcGxJYH6B7vh8yRyiadTWU2HnyAbAdSe92ZaU
         iuCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=6oZ0D8ToWbZWI7QaCuBhkvnOVQutOFrBJYORQI216I4=;
        fh=LgvCEz5lk1TzrW6i1XBrmPqzFhfUK0KWPoQnGPVyqcw=;
        b=mWYbKBnMgRqhbLQIpg8x3hpr5a6ZJmq0eiPuYJAm7yhzaKfCWOWyL9gbEwxIHHCbV6
         cPy1De3SED5PU9+nrprkzTHD/NTx6WtoLTABwkb2TDjBcZCHhU5Zbn2yw7TzFtZ7GT1D
         g3w/3i8Iqaof3BwdLMnHlG2IhsTzc+TvpakCGkazYSKfSPul8OorYivcZfv06SiLpSev
         JZ/c9JZ4ZO5jl32mxvWrEW4pGf8QwbnmsGNlhJ0+fCBzgVRZZrtA4U4XhFyrCUfXgJ9R
         ouHAJPwimrBHPT5KPEcZT7cYVYRSRg+v1K1Sl++cu7HfBaoEHHhYWJhLWrZA6YIJ/RyB
         VIOg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id o11-20020a0cfa8b000000b0067a51ad033dsi3405054qvn.218.2023.11.28.13.42.25
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 13:42:25 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-320-Qk1Y3ZvBMJCwCijFmnMMxw-1; Tue,
 28 Nov 2023 16:42:24 -0500
X-MC-Unique: Qk1Y3ZvBMJCwCijFmnMMxw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2E584380452C
	for <blinux-list@gapps.redhat.com>; Tue, 28 Nov 2023 21:42:24 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2B7C35038; Tue, 28 Nov 2023 21:42:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 223025028
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:42:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 016D23C0BE33
	for <blinux-list@redhat.com>; Tue, 28 Nov 2023 21:42:23 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-110-adLxLcOeMhGHzi-ksopEPw-1; Tue,
 28 Nov 2023 16:42:21 -0500
X-MC-Unique: adLxLcOeMhGHzi-ksopEPw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 349E240508;
	Tue, 28 Nov 2023 16:42:21 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id E5F961001B4; Tue, 28 Nov 2023 16:42:20 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id E5A4D10008B;
	Tue, 28 Nov 2023 16:42:20 -0500 (EST)
Date: Tue, 28 Nov 2023 16:42:20 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Karl Dahlke <eklhad@comcast.net>
cc: blinux-list@redhat.com, discuss@blvuug.org
Subject: Re: Brave, or new browser projects and  the command line?
In-Reply-To: <20231028162540.eklhad@comcast.net>
Message-ID: <Pine.LNX.4.64.2311281639020.3701114@users.shellworld.net>
References: <Pine.LNX.4.64.2311281559340.3700734@users.shellworld.net>
 <20231028162540.eklhad@comcast.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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

Actually, this does not answer the question at all, my fault.
The goal here is using the fastmail web interface..say through a 
provider like  pobox.com
www.pobox.com
Its why the fastmail team is asking about command line browsers.


I do not need fastmail for imap, there are other tools that do this with 
less complication.



On Tue, 28 Nov 2023, Karl Dahlke wrote:

> It's only a partial answer, but I can access any server that supports imap or 
> pop3 with edbrowse acting as my email client. (I assume fastmail supports 
> direct imap.) This doesn't address setting up the account, configuring 
> various filters, etc. That is web-based and will have its own issues, 
> probably even captchas, God help us all. But if I had some help getting past 
> these speedbumps, as I did with gmail, then I would be good to go thereafter.
>
> Karl Dahlke
>
>
>

