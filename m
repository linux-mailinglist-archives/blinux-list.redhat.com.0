Return-Path: <blinux-list+bncBDGI3AUYYYCBBXHL766AMGQEPYSTP7Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C40A2506D
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2025 23:46:54 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-467b0b0aed4sf75538251cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 02 Feb 2025 14:46:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738536413; cv=pass;
        d=google.com; s=arc-20240605;
        b=I0FcLHBSBQejWwHPvvpeOuj7vKNgV+NlTLL0jKk6a7rM1a2dGTZuM8DTPZ9LEmUGls
         5HcONOTJwwIEXTWwa4q2SBAW5FpTkgYRm4wZYpSM4M6aF7bB+FBkACsw6l//U4C9yZ4Z
         vL7OM+yhdDm1N8znTDngn4Aq8QQEFueB8NdkiCG+qGIUe6n8TztHMaYblY8KmHnHZ8mD
         xrwyl0gfrZ6oaHJ8qVbIjqVoNwjz7tccrh+l4PAbb849w3AHLKgV/RKSammmc8ZCf4XW
         vi0B3DPnbMcIIqODMQXKyzLW7Dv5vkoS2jQslbk1QzNiJzM761vd/pwMkTnkQPN3v35s
         KDfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:to:from:date
         :delivered-to;
        bh=wgjcf36pd2PrHHLE4X6Wo9mk+laAQQAc8w6I93/UTYY=;
        fh=uyCKPPLJkXirwYPn+bMfurFiWjMds4uS6mx55oag9jU=;
        b=YM+C+YzQIGfTgOBjZfH7O0WLAREbCTIQjtCCO3ewlTde/f3H4+Cs3xJflgSqeyHf7Q
         BdmaVOkENyNIzrAlAxgel+QRJ5G632zFzTH5ep+AwVSTuNSiSkOJ6ROBkB76uoI5EyQf
         pDHlc2WMSL1vP+GPXG+FO8WSXnigH7u9sCx646fYMvWy/S+o2t7T/OTBPP+cswLPEBk/
         5ORC3jULjVUYzH175iO/yNbD1QglBoilzuABox4LVly+72qM1pPuGtimr4iV3blOwSNE
         nEbo9l9ffeyBRrRL4f5MieEhHMnvoQuCtrdn36ToUuBAGSgS1FV2m+WHidz2G/cJen9V
         +ZtQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738536413; x=1739141213;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wgjcf36pd2PrHHLE4X6Wo9mk+laAQQAc8w6I93/UTYY=;
        b=rCjSBMitFjBPY4diuAVRERtXEjLDXg/ta2EKVIQkmEo+YsPGbPnjcI5uwaU34eQCAq
         mS+VexgMwHQ96X9DrBeZmXmRTPDNEtsM8P2rxLEnQtiANfFEOAt57IOT6lc3xYER8SAZ
         CbPFze01EzZj97fS+nX2/O9Vu5tpfc4IDfhSlnRmCcO7/KrS7npMeiDZsYEdTV0FF9vD
         5FpECUMs2LnHp9/GGroxS3QRK2MkFQwhRAisg6dX/G5eWdy1A9QOR192ebAwJTtgemtS
         n4cptCgKkjFiF3NV7pMRYBMFGEZzZVnfc1NLm2qrbdYXrTOz0R71OHLG1AaLY7Bx2OcG
         h+Wg==
X-Forwarded-Encrypted: i=2; AJvYcCVLZmYoOtYROlebmb9Vn++9s3jdrV+j/LhasoWayvic6nnzHWy6q0EKMjC1CUG4Ym8cBhcmIA==@lfdr.de
X-Gm-Message-State: AOJu0YzkF1grIKWFlOIbUh0Q7CJiDspb6Wz0O93xtYEmeICB7wsphEvP
	piKc6woSAHvcHqrrtxnJDFWuQnV6NqcpYLyLdBYzDJrsnqhx4YfRBbp51MkGzis=
X-Google-Smtp-Source: AGHT+IF6AUshP1+3F0KPfdr3KZq20ldFLJ9kZt72GEDQIcyzNZjIoFBXntWrhSNxY4g8dVoqLP6iLw==
X-Received: by 2002:a05:622a:1b1a:b0:467:867b:ff55 with SMTP id d75a77b69052e-46fd0accc2fmr327137061cf.27.1738536412772;
        Sun, 02 Feb 2025 14:46:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:6d14:0:b0:46e:5db6:4f6d with SMTP id d75a77b69052e-46fdcf96ac3ls17795861cf.1.-pod-prod-03-us;
 Sun, 02 Feb 2025 14:46:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUMtmkfQNaGOljz+pHkD3Ypo0z2MN62LUeIhDTkhmcNmxU9+fgRWY1dWYnByVsJe3bdxN5G+eRB5O8aHw==@gapps.redhat.com
X-Received: by 2002:a05:622a:20d:b0:467:4395:2ac9 with SMTP id d75a77b69052e-46fd0acdb1bmr253306501cf.31.1738536411899;
        Sun, 02 Feb 2025 14:46:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738536411; cv=none;
        d=google.com; s=arc-20240605;
        b=VhU9XgloZmqmNqZ5v1fYUYfuaVHzTEY5AupceUBAPf9LPIjh7BG+CrPMgY6qyMJqOa
         ZhpMZLZRoQreO1bxXUvSJ1jTFaA1UISpTcpAcZ5JG8LW8gfIoOyit8qAgTfNHdkDt0fb
         lPDIqmaiOW6QLnybpCpiWkjBaM738LKwps0A9kOny8GCAWmIFzM4Shp6yYc2Jp05qGGp
         OJ0qGmRSGdz69636wQOpxsfi96I/qyxpEVPJB6JmoHjoN4mLgQBcZTb+/r63P525n2CB
         b0Nc1s0Qcj1jriYc5KaImPV204OQXmqsxDIllOP6mW1WkVQWUec4SfHV6nbRO4VXk9dd
         N7bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:to:from:date:delivered-to;
        bh=RiQaYlPaXygB/G1oyjFO7LEYHme/0+fhtBw1Pydgs88=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=eQ6JLdDzCb3THbUZPY2e8BWt7fCPp/zUSRH5nEbxMfWDfQAzbzdqqxM+Yuq/numsuh
         zRRMj5N8B9u3EOlkqXlc8lS8RVXhMukIdfPAtBCn7dF2fgW6fFTTPagAlADstduR+yAn
         +bjyd1/9+4QCrUxluyInhZIiYB5ItVdo/J1wTwr5Zx3R6W961jFqgivO+eoCqfosvFzI
         GCFDRfZ4k6bB/5YoMyDGGbXT6wgUH/evD2iHZxrI5SOc7PsONXfo2gnyQNi+sbb1x4F0
         r+WUQ2OHfKtVEGTInHCwfZY0zxk6+tvCMhmMmwXhElTGif/+41WWhV2J5skUCcpZAgw1
         51EQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf1f19f0si82400131cf.623.2025.02.02.14.46.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Feb 2025 14:46:51 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-675-MZYIONuhNxSP6AJYyh5ArA-1; Sun,
 02 Feb 2025 17:46:50 -0500
X-MC-Unique: MZYIONuhNxSP6AJYyh5ArA-1
X-Mimecast-MFC-AGG-ID: MZYIONuhNxSP6AJYyh5ArA
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B7E7F180034F
	for <blinux-list@gapps.redhat.com>; Sun,  2 Feb 2025 22:46:49 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B19ED19560AA; Sun,  2 Feb 2025 22:46:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AF12819560A3
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 22:46:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4A77C180034F
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 22:46:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-392-8PY8of6FMdWkJ3tKaY_G0A-1; Sun,
 02 Feb 2025 17:46:46 -0500
X-MC-Unique: 8PY8of6FMdWkJ3tKaY_G0A-1
X-Mimecast-MFC-AGG-ID: 8PY8of6FMdWkJ3tKaY_G0A
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YmPrQ4czSz4ZtF
	for <blinux-list@redhat.com>; Sun,  2 Feb 2025 17:46:46 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YmPrQ4Rr3zfYm; Sun,  2 Feb 2025 17:46:46 -0500 (EST)
Date: Sun, 2 Feb 2025 17:46:46 -0500
From: Rudy Vener <salt@panix.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ever onward with firefox
Message-ID: <Z5_11m-Z47dhpDOC@panix.com>
References: <Z5_gsJcWqpCA0JmM@panix.com>
 <CAO2sX31iZ1LjTgXipe-tTX0--jStKRN6XvaZFXXQn5U_-y6dWg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAO2sX31iZ1LjTgXipe-tTX0--jStKRN6XvaZFXXQn5U_-y6dWg@mail.gmail.com>
X-Mimecast-MFC-PROC-ID: nGBZq7LqNUqgICTvusVIS_J7SUjgGqkKbJ6Gc14RUAI_1738536406
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: QIls0cZT0I9Jh-UrnxRttDlDX4A0aLqqmZsIKE1P6Bo_1738536409
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

Jeffery,

Thanks. This basic stuff is exactly what I need. I've been using Unix or Linux text consoles for
the past 40 or so years.  All my instincts tell me to edit as if I am using vi/vim with
often hilarious results. So my situation is exactly opposite yours.


  I had to hunt in Learn mode to find my Insert, Home, and End keys because I never use them.
I only know where the arrow keys are because I need them to control mplayer in text console mode.
Your so called basic instructions are an enormous help.

Very appreciatively,

Rudy

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

On Sun, Feb 02, 2025 at 10:21:41PM +0000, Jeffery Mewtamer wrote:
>    As a general rule, once a textbox has focus, usually because you used
>    Orca's e navigation hotkey to jump to it and switched to focus mode or
>    tabbed to it from an adjacent form element, you should be able to just
>    type into it.
>    That said, I know console applications don't always use standard
>    keyboard shortcuts that are near universal across both Windows and
>    Linux when it comes to editing text, so here are some basic keyboard
>    shortcuts when in a textbox that should also apply to most GUI text
>    editors, word processors, etc.:
>    Textboxes in web forms come in two versions:A  single line and
>    multi-line, and best I can tell, Orca doesn't make a distinction
>    between them. In either case, left/right arrow will move the insertion
>    point one character at a time, and ctrL+left/right arrow will move the
>    insertion point to the next whitespace or punctuation character, and
>    home/end to the beginning/end of the line. for Single line text
>    entries, up/down arrow act like home/end, while for multi line, they
>    move by line. PageUp/PageDown will move by multiple lines in a
>    multi-line textbox, but they are rather unpredictable.
>    Hold shift and use arrow/navigation keys to select text, everything
>    acting like it does for moving the insertion point, including the
>    ctrl+left/right arrow to go by word/string.
>    ctrl+a: Select all. If a textbox is focused, this will select the
>    contents of the text box. If you are in browse mode, it will select
>    everything on the page.
>    delete/backspace: will delete whatever is selected, if anything, if
>    nothing is selected, they just delete the next/previous character
>    relative to the insertion point.
>    ctrl+c: copy selection
>    ctrl+x: cut selection
>    ctrl+v: paste last thing copy/pasted
>    ctrl+shift+v: This isn't useful when editing text in firefox, but if
>    you need to copy something from Firefox or another GUI application into
>    a terminal window, the normal ctrl+v to paste often won't work and
>    you'll need to use ctrl+shift+v to paste into the terminal.
>    Firefox has a built-in spell checker and Orca should announce an
>    unrecognized word when you press space at the end of the word or move
>    the insertion point into it, and Firefox's suggestions for correcting
>    the unrecognized word are part of the context menu when a textbox has
>    focus.
>    As for copying the contents of a file into a textbox,, if you type:
>    file:///path/to/directory
>    into Firefox's address bar(accessed with ctrl+l), you can navigate
>    local directories, and if it's a file Firefox can read, you can open
>    local files, though Firefox will only open plain text files that have
>    the .txt extension as far as I know. I have several local directories
>    where I'm likely to want to copy the contents of a text file contained
>    therein into a web form, and when I want to do so, I open the
>    appropriate bookmark to a local directory in a new tab, open the file I
>    want to copy, elect all, copy, switch tabs, and paste. Firefox also has
>    an open file option in the file menu, through I personally find the
>    generated directory listings easier to navigate than the open file
>    dialog. Sadly, I'm not aware of any way to just insert the contents of
>    a local file into a textbox without manually opening the file and
>    copying its contents, and naturally, you'd need another GUI app for
>    files that can't be opened directly in Firefox.
>    Hope that helps and sorry if some of this is super basic. I've been
>    using firefox since before Firefox 1.0, longer than I've been using
>    Linux and I was a long time Linux user when I went blind and I've never
>    gotten the hang of using a text-mode web browser, so I really don't
>    know how much of this is stuff you genuinely don't know coming from
>    text browsers and how much is stuff I take for granted becuase I
>    struggle to remember a time before I learned.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

